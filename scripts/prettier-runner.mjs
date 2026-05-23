import { spawn } from "node:child_process";
import { readdir } from "node:fs/promises";
import path from "node:path";
import { fileURLToPath } from "node:url";

const MODE = process.argv.includes("--check") ? "--check" : "--write";
const ROOT = path.resolve(path.dirname(fileURLToPath(import.meta.url)), "..");
const PRETTIER = path.join(ROOT, "node_modules", "prettier", "bin", "prettier.cjs");
const BATCH_SIZE = 150;
const MAX_ATTEMPTS = 4;
const RETRY_DELAY_MS = 350;

const INCLUDED_EXTENSIONS = new Set([".js", ".json", ".yml", ".md"]);
const IGNORED_DIRECTORIES = new Set([".git", "node_modules", "target"]);
const IGNORED_FILES = new Set(["package-lock.json"]);

async function collectFiles(directory) {
    const entries = await readdir(directory, { withFileTypes: true });
    const files = [];

    for (const entry of entries) {
        const fullPath = path.join(directory, entry.name);

        if (entry.isDirectory()) {
            if (!IGNORED_DIRECTORIES.has(entry.name)) {
                files.push(...(await collectFiles(fullPath)));
            }
            continue;
        }

        if (!entry.isFile()) {
            continue;
        }

        const relativePath = path.relative(ROOT, fullPath);
        if (
            INCLUDED_EXTENSIONS.has(path.extname(entry.name)) &&
            !IGNORED_FILES.has(relativePath.replaceAll(path.sep, "/"))
        ) {
            files.push(relativePath);
        }
    }

    return files;
}

function sleep(ms) {
    return new Promise((resolve) => setTimeout(resolve, ms));
}

function isRetryablePrettierError(output) {
    return /UNKNOWN: unknown error, open|EBUSY:|EPERM:|EACCES:/i.test(output);
}

function writeStream(stream, text) {
    if (stream.destroyed) {
        return;
    }

    try {
        stream.write(text);
    } catch (error) {
        if (error.code !== "EPIPE") {
            throw error;
        }
    }
}

function runPrettier(args) {
    return new Promise((resolve) => {
        const child = spawn(process.execPath, [PRETTIER, ...args], {
            cwd: ROOT,
            shell: false,
            windowsHide: true,
        });

        let output = "";

        child.stdout.on("data", (chunk) => {
            const text = chunk.toString();
            output += text;
            writeStream(process.stdout, text);
        });

        child.stderr.on("data", (chunk) => {
            const text = chunk.toString();
            output += text;
            writeStream(process.stderr, text);
        });

        child.on("error", (error) => {
            output += `${error.message}\n`;
            resolve({ status: 1, output });
        });

        child.on("close", (status) => resolve({ status, output }));
    });
}

async function runBatch(files, index, total) {
    const args = [MODE, "--ignore-path", ".prettierignore"];
    if (MODE === "--write") {
        args.push("--log-level", "warn");
    }
    args.push(...files);

    for (let attempt = 1; attempt <= MAX_ATTEMPTS; attempt += 1) {
        console.log(
            `Prettier ${MODE.slice(2)} batch ${index}/${total}` +
                (attempt > 1 ? ` (retry ${attempt}/${MAX_ATTEMPTS})` : ""),
        );

        const result = await runPrettier(args);
        if (result.status === 0) {
            return 0;
        }

        if (
            result.status === 2 &&
            attempt < MAX_ATTEMPTS &&
            isRetryablePrettierError(result.output)
        ) {
            await sleep(RETRY_DELAY_MS * attempt);
            continue;
        }

        return result.status ?? 1;
    }

    return 1;
}

const files = (await collectFiles(ROOT)).sort((a, b) => a.localeCompare(b));
const batches = [];
for (let index = 0; index < files.length; index += BATCH_SIZE) {
    batches.push(files.slice(index, index + BATCH_SIZE));
}

console.log(`Prettier ${MODE.slice(2)}: ${files.length} files in ${batches.length} batches`);

let exitCode = 0;
for (let index = 0; index < batches.length; index += 1) {
    const batchExitCode = await runBatch(batches[index], index + 1, batches.length);
    if (batchExitCode !== 0) {
        exitCode = batchExitCode;
        if (MODE === "--write") {
            break;
        }
    }
}

process.exitCode = exitCode;
