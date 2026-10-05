#import "nelson_help.typ": *

= nmm <modules_manager:nmm>

Nelson Modules Manager.

== Syntax

- #raw("st = nmm('list')");
- #raw("st_json = nmm('list', '-json')");
- #raw("commands = nmm('commands')");
- #raw("commands_json = nmm('commands', '-json')");
- #raw("report = nmm('help')");
- #raw("report_json = nmm('help', '-json')");
- #raw("report = nmm('help', command)");
- #raw("report_json = nmm('help', command, '-json')");
- #raw("report = nmm(command, ..., '-quiet')");
- #raw("nmm('load', module_name)");
- #raw("nmm('load', module_name, version)");
- #raw("report = nmm('verify', package_filename)");
- #raw("report = nmm('verify', module_path)");
- #raw("lock = nmm('lock', module_path)");
- #raw("lock = nmm('lock', module_path, '-dry-run')");
- #raw("report = nmm('lock', module_path, '-check')");
- #raw("report = nmm('lock', module_path, '-diff')");
- #raw("report = nmm('config')");
- #raw("report = nmm('pin', module_name)");
- #raw("report = nmm('pin', module_name, version)");
- #raw("report = nmm('unpin', module_name)");
- #raw("report = nmm('why', package_name)");
- #raw("report = nmm('why', install_report, package_name)");
- #raw("json_text = nmm('why', package_name, '-json')");
- #raw("report = nmm('tree', package_name)");
- #raw("report = nmm('tree', install_report)");
- #raw("json_text = nmm('tree', package_name, '-json')");
- #raw("deps = nmm('deps', package_name)");
- #raw("deps = nmm('deps', install_report)");
- #raw("json_text = nmm('deps', package_name, '-json')");
- #raw("rdeps = nmm('rdeps', package_name)");
- #raw("status = nmm('status', package_name)");
- #raw("report = nmm('explain', package_name)");
- #raw("graph = nmm('graph', package_name)");
- #raw("versions = nmm('installed', package_name)");
- #raw("info = nmm('latest', package_name)");
- #raw("report = nmm('resolve', package_name, version_spec)");
- #raw("tf = nmm('satisfies', version, version_spec)");
- #raw("l = nmm('autoload', module_name)");
- #raw("nmm('autoload', module_name, state)");
- #raw("nmm('install', git_url)");
- #raw("nmm('install', module_path, '-tests')");
- #raw("nmm('install', module_path, '-no-tests')");
- #raw("nmm('install', git_url, '-tests')");
- #raw("report = nmm('install', package_filename, '-dry-run')");
- #raw("report = nmm('install', package_filename, '-force')");
- #raw("report = nmm('install', package_name, '-dry-run')");
- #raw("nmm('install', package_name, version)");
- #raw("report = nmm('install', package_name, version, '-dry-run')");
- #raw("nmm('install', package_name, version, '-tests')");
- #raw("nmm('install', package_name, version, '-no-tests')");
- #raw("nmm('install', package_name, version, '-force')");
- #raw("report = nmm('install', package_name, version, '-offline', '-dry-run')");
- #raw("nmm('uninstall', module_name)");
- #raw("nmm('uninstall', module_name, version)");
- #raw("nmm('remove', module_name)");
- #raw("report = nmm('remove', module_name, '-dry-run')");
- #raw("report = nmm('remove', module_name, '-force')");
- #raw("nmm('remove', module_name, version)");
- #raw("report = nmm('remove', module_name, version, '-dry-run')");
- #raw("orphans = nmm('orphans')");
- #raw("orphans_json = nmm('orphans', '-json')");
- #raw("report = nmm('autoremove')");
- #raw("report = nmm('autoremove', '-dry-run')");
- #raw("report_json = nmm('autoremove', '-dry-run', '-json')");
- #raw("package_filename = nmm('package', module_name, destination_dir)");
- #raw("package_filename = nmm('pack', module_path, destination_dir)");
- #raw("report = nmm('pack', module_path, '-dry-run')");
- #raw("report = nmm('pack', module_path, destination_dir, '-dry-run')");
- #raw("package_filename = nmm('pack', module_path, destination_dir, '-no-tests')");
- #raw("report = nmm('publish', package_filename)");
- #raw("report = nmm('publish', package_filename, '-dry-run')");
- #raw("report = nmm('publish', package_filename, '-check')");
- #raw("report = nmm('publish', package_filename, '-force')");
- #raw("json_text = nmm('publish', package_filename, '-json')");
- #raw("report = nmm('publish', package_filename, '-source', url)");
- #raw("module_json_path = nmm('init', destination_dir, field1, value1, ...)");
- #raw("data = nmm('init', destination_dir, ..., 'DryRun', true)");
- #raw("module_json_path = nmm('init', destination_dir, ..., 'Skeleton', true)");
- #raw("module_json_path = nmm('init', destination_dir, 'Interactive', true)");
- #raw("tf = nmm('validate', module_path)");
- #raw("tf = nmm('validate', module_json_file)");
- #raw("tf = nmm('validate', module_path, '-strict')");
- #raw("report = nmm('validate', module_path, '-warnings')");
- #raw("json_text = nmm('validate', module_path, '-json')");
- #raw("report = nmm('audit')");
- #raw("report = nmm('audit', package_name)");
- #raw("json_text = nmm('audit', '-json')");
- #raw("report = nmm('doctor')");
- #raw("report = nmm('doctor', package_name)");
- #raw("json_text = nmm('doctor', package_name, '-json')");
- #raw("report = nmm('repair')");
- #raw("packages = nmm('search', query)");
- #raw("json_text = nmm('search', query, '-json')");
- #raw("packages = nmm('search', query, '-platform')");
- #raw("info = nmm('info', package_name)");
- #raw("info = nmm('info', package_name, version)");
- #raw("json_text = nmm('info', package_name, '-json')");
- #raw("versions = nmm('versions', package_name)");
- #raw("json_text = nmm('versions', package_name, '-json')");
- #raw("report = nmm('registry', 'list')");
- #raw("report = nmm('registry', 'check')");
- #raw("report = nmm('registry', 'validate')");
- #raw("report = nmm('registry', 'stats')");
- #raw("report = nmm('registry', 'doctor')");
- #raw("outdated = nmm('outdated')");
- #raw("outdated = nmm('outdated', module_name)");
- #raw("json_text = nmm('outdated', module_name, '-json')");
- #raw("report = nmm('update')");
- #raw("report = nmm('update', '-dry-run')");
- #raw("report = nmm('update', module_name)");
- #raw("report = nmm('update', module_name, '-dry-run')");
- #raw("cache_dir = nmm('cache', 'dir')");
- #raw("cache_packages = nmm('cache', 'list')");
- #raw("report = nmm('cache', 'size')");
- #raw("info = nmm('cache', 'info', package_name, version)");
- #raw("tf = nmm('cache', 'has', package_name, version)");
- #raw("report = nmm('cache', 'add', package_filename)");
- #raw("report = nmm('cache', 'export', destination_dir)");
- #raw("report = nmm('cache', 'import', source_dir)");
- #raw("report = nmm('cache', 'remove', package_name, version)");
- #raw("report = nmm('cache', 'verify')");
- #raw("report = nmm('cache', 'prune')");
- #raw("report = nmm('cache', 'prune', '-dry-run')");
- #raw("status = nmm('cache', 'clear')");
- #raw("nmm('install', package_name, '-offline')");
- #raw("nmm('install', package_name, version, '-offline')");

== Input argument

/ query: a string: text to search in registry package metadata.
/ package\_name: a string: package name in the configured registry.
/ version: a string: exact package version or semver constraint.
/ module\_path: a string: path to a module directory containing module.json.
/ module\_name: a string: short module's name.
/ state: a logical: true will autoload module at startup, false disable autoload for this module.
/ git\_url: a string: a git url (http\/https protocol).
/ destination\_dir: a string: an existing destination directory where archive will be created.

== Output argument

/ outdated: a struct array: installed modules with newer registry versions.
/ cache\_dir: a string: local nmm cache directory.
/ cache\_packages: a struct array: cached packages with name, version, path and has\_sha256 fields.
/ json\_text: a string: JSON encoded audit report.
/ status: a logical: true when the cache command succeeds.
/ packages: a struct array: matching registry package entries.
/ info: a struct: registry package entry.
/ versions: a cell of strings: package versions listed in the registry.
/ report: a struct: audit status with ok and issues fields.
/ tf: a logical: true if module.json is valid, otherwise an error is raised.
/ st: a struct: list of installed modules.
/ l: a logical: current state of autoload.
/ package\_filename: a string: filename.
/ lock: a struct: generated module-lock.json content.

== Description

#strong[nmm]; is the Nelson Modules Manager.

 Installations are prepared in a temporary staging directory, built, locked, and then copied to the final user modules directory. If an error occurs before completion, #strong[nmm]; rolls back the partially installed module.

 Source module dependencies declared in #strong[module.json]; are resolved before the module is built. When a source module already provides #strong[module-lock.json];, its exact locked dependency versions are used instead of the declarative ranges. Local paths, archives and HTTP Git repositories are installed recursively. Version constraints are checked against already installed dependencies and conflicts stop the installation before the module is copied. Source installs build the module in staging before committing it to the final modules directory. Package tests are not run at install time by default: pass #strong[-tests]; to run them, or set the environment variable #strong[NELSON\_NMM\_INSTALL\_TESTS\=1]; to run them for every source install; #strong[-no-tests]; is still accepted. A registry entry declaring #strong["tests": "required"]; always runs the package tests, and the install fails when they do. Prebuilt archives never run tests: they were tested when packed (#strong[nmm pack]; requires passing tests). If a source install fails, an already installed version of the same module remains installed and active.

 Source modules and prebuilt archives are validated before installation. Packages whose #strong[nelson]; compatibility range does not match the running Nelson version are rejected before build or final copy.

 Source-based distribution packages allows to have optimized packages for your computer and allows to have distributed repositories.

 Installed modules are locally built and can require an C\/C++.

 

 #strong[st \= nmm('list')]; get list of installed modules. This reads the local installed-module registry without network access or package loading and requires only the json module, not webtools or file\_archiver. The -json and -quiet forms have the same dependencies.

 Add #strong['-json']; to #strong[list];, #strong[commands];, #strong[help];, #strong[tree];, #strong[why];, #strong[deps];, #strong[outdated]; or #strong[doctor]; to return the same report encoded as JSON for scripts.

 Add #strong['-quiet']; as the last argument to suppress command output while preserving returned values. This is intended for CI scripts around commands that run builders or tests.

 #strong[nmm('commands')]; returns a short scriptable list of supported command groups, syntax examples and aliases. #strong[nmm('help')]; lists command names. #strong[nmm('help', command)]; returns the entry for one command or alias.

 #strong[nmm('config')]; reports the configured registry, cache directory, user modules directory, signing-key state, trusted registry key count, unsigned-registry opt-out and offline cache count.

 

 #strong[nmm('install', git\_url)]; install a distant module.

 About git\_url, in this example 'https:\/\/github.com\/nelson-lang\/module\_skeleton\_basic.git\#v1.0.0'

 '\#v1.0.0' is defined as \#\<commit-ish\>, it allows to clone exactly an commit.

 The commit-ish can be a tag (exact version), and an sha1 (exac commit) or an branch name.

 Without commit-ish, master branch will be used.

 

 #strong[nmm('install', package\_name, version)]; installs an exact package version or the newest package version matching a semver constraint from the configured registry. The registry entry must contain an install source through #strong[source];, #strong[url]; or #strong[archive];. Dependencies declared by the registry entry are resolved recursively before the requested package is installed.

 Accepted semver constraints include forms such as #strong[\>\=1.2.0];, #strong[\~1.4]; and #strong[^2.0.0];.

 Registry installs reject entries whose #strong[platforms]; or #strong[nelson]; metadata are not compatible with the current runtime before reading the package source.

 #strong[nmm('install', package\_name, '-dry-run')]; resolves the latest compatible registry package. #strong[nmm('install', package\_name, version, '-dry-run')]; resolves the registry package and its recursive dependencies, verifies compatibility and local archive checksums when available, and returns an install plan without changing installed modules or the cache.

 #strong[nmm('install', package\_name, version, '-tests')]; installs a registry package and runs its package tests when its source is a local source tree or a Git repository; #strong[-no-tests]; skips them explicitly (the default, unless the registry entry declares #strong["tests": "required"];). #strong[nmm('install', package\_name, version, '-force')]; reinstalls the registry package version, replacing an already installed copy when necessary.

 

 #strong[nmm('install', filename\_nmz)]; install an prebuilt external module.

 Prebuilt archives must contain #strong[module-lock.json];. Dependencies listed in this lock file must already be installed and the archive platform must match the current architecture or be #strong[all];. Binary packages also require the locked Nelson architecture and ABI tag to match the running Nelson build. If a sibling #strong[.sha256]; checksum file exists, it is verified before extraction.

 #strong[nmm('install', module\_path, '-tests')]; installs a local source module (or a Git repository) and runs its package tests before registering it; #strong[nmm('install', module\_path, '-no-tests')]; skips them explicitly. Without an option, tests are not run unless #strong[NELSON\_NMM\_INSTALL\_TESTS\=1]; is set.

 #strong[nmm('install', package\_filename, '-dry-run')]; verifies an archive install plan without writing to #strong[modules.json]; or copying files into the user modules directory.

 #strong[nmm('install', package\_filename, '-force')]; reinstalls the same checked archive version by uninstalling the already installed version after the archive dry-run validation succeeds.

 #strong[nmm('verify', package\_filename)]; verifies a #strong[.nmz]; archive without installing it. It checks package structure, #strong[module.json];, #strong[module-lock.json];, embedded lockfile checksums, optional #strong[.sha256]; sidecar, and Nelson architecture or ABI compatibility for binary packages. #strong[nmm('verify', module\_path)]; verifies that a source module lockfile is up to date.

 

 #strong[nmm('load', module\_name)]; load an installed module for current session.

 #strong[nmm('load', module\_name, version)]; loads a specific installed version of a module.

 Multiple versions of the same module can be installed side by side. The active version is the newest installed version unless a version has been pinned.

 #strong[nmm('pin', module\_name, version)]; selects the default active version and records it in #strong[modules.json]; as #strong[pinned\_version];. If the version is omitted, the current active version is pinned.

 #strong[nmm('unpin', module\_name)]; removes #strong[pinned\_version]; without uninstalling the module and makes the newest installed version active.

 #strong[nmm('why', package\_name)]; explains which installed modules require an installed package by reading installed #strong[module-lock.json]; dependencies. #strong[nmm('why', install\_report, package\_name)]; explains why a package appears in a registry dry-run install plan.

 #strong[nmm('tree', package\_name)]; returns the installed dependency tree for a package by reading #strong[module-lock.json];. #strong[nmm('tree', install\_report)]; returns the dependency tree represented by a registry dry-run install plan. The report includes nested dependencies, missing packages and conflicts.

 #strong[nmm('deps', package\_name)]; and #strong[nmm('deps', install\_report)]; return a flat dependency list from an installed package tree or registry dry-run install plan. #strong[nmm('rdeps', package\_name)]; returns installed packages that depend on a package. #strong[nmm('status', package\_name)]; returns a scriptable summary of the installed package state, active version, lockfile, missing dependencies and reverse dependencies.

 #strong[nmm('explain', package\_name)]; combines status, dependency tree and reverse dependency information into a scriptable report with human-readable summary lines. #strong[nmm('graph', package\_name)]; exports the installed dependency graph as DOT and Mermaid text.

 #strong[nmm('installed', package\_name)]; returns locally installed versions only. #strong[nmm('latest', package\_name)]; returns the latest compatible registry package. #strong[nmm('resolve', package\_name, version\_spec)]; returns the exact compatible registry version selected for a version constraint without installing it. #strong[nmm('satisfies', version, version\_spec)]; checks a version against an exact version or semver constraint.

 

 #strong[l \= nmm('autoload', module\_name]; returns current state autoload for #strong[module\_name];.

 

 #strong[nmm('autoload', module\_name, state)]; marks an installed modules "marked" as autoload at startup.

 By default modules are marked as autoload.

 

 #strong[nmm('uninstall', module\_name)]; uninstall an installed module.

 #strong[nmm('remove', module\_name)]; is an alias for #strong[nmm('uninstall', module\_name)];. Removal returns a report when requested, including removed paths, reverse dependencies and whether the operation changed installed modules.

 #strong[nmm('remove', module\_name, version)]; removes only the selected installed version. Without a version argument, all installed versions of the module are removed. #strong[nmm('remove', module\_name, '-dry-run')]; reports the impact without deleting files. By default, removal is refused when installed modules still require the package; use #strong[-force]; to remove it anyway.

 #strong[nmm('orphans')]; lists auto-installed dependency packages that are no longer reachable from explicitly installed modules. #strong[nmm('autoremove', '-dry-run')]; reports those packages without deleting them, and #strong[nmm('autoremove')]; removes them with explicit force because they are already classified as orphan dependencies. Both commands support #strong['-json']; output for scripting.

 

 #strong[nmm('package', module\_name, destination\_dir)]; packages an module as a zip file.

 The generated #strong[module-lock.json]; stores exact installed dependency versions, lock format, package type (#strong[source]; or #strong[binary];), source metadata, Nelson version, architecture, ABI tag and checksums for key installed files such as #strong[module.json];, #strong[loader.m];, #strong[builder.m]; and the startup or finish scripts. The packaged module records the dependency set, runtime context and file integrity state used at build time.

 Packaging also writes #strong[package\_filename.sha256];. This sidecar is optional for single-file distribution: installing or publishing a #strong[.nmz]; archive verifies it when present, and otherwise relies on the checksums embedded in #strong[module-lock.json];.

 

 #strong[nmm('pack', module\_path, destination\_dir)]; validates and builds a source module in a temporary staging directory, runs the module tests with fail-fast behavior, generates #strong[module-lock.json];, then creates a #strong[.nmz]; archive and its #strong[.sha256]; checksum.

 #strong[nmm('pack', module\_path, '-dry-run')]; validates, builds, tests and computes the lockfile without creating an archive. With a destination directory, the report also includes the archive path that would be written.

 #strong[nmm('pack', module\_path, destination\_dir, '-no-tests')]; creates the archive without running package tests. This is intended for local development archives only.

 By default the archive excludes version-control directories, build output (#strong[bin\/];, #strong[x64\/];, object and library files, cmake caches) and editor junk, so a packaged module is clean without any configuration. A #strong[.nmignore]; file at the module root adds further excludes with gitignore-style patterns (#strong[\#]; comments, #strong[\*];, #strong[\*\*];, a trailing #strong[\/]; for a directory, a leading #strong[!]; to re-include, an unslashed name matches at any depth while a slashed pattern is anchored to the module root); a file whose parent directory is excluded cannot be re-included. An optional #strong[files]; array in #strong[module.json]; is an allowlist of glob patterns: when present, only the matching files are packaged (still minus the default excludes, and always keeping #strong[module.json];, #strong[module-lock.json]; and #strong[loader.m];). #strong[nmm('pack', module\_path, '-dry-run')]; lists the exact files that would be packaged, so the selection can be checked before an archive is written.

 #strong[nmm('lock', module\_path)]; builds the source loader when needed and writes or refreshes #strong[module-lock.json]; in the source tree without installing or packaging the module. #strong[nmm('lock', module\_path, '-dry-run')]; returns the computed lock without writing it. #strong[nmm('lock', module\_path, '-check')]; reports whether the current lockfile is up to date. #strong[nmm('lock', module\_path, '-diff')]; also returns the current and expected lock data.

 #strong[nmm('publish', package\_filename)]; publishes a checked #strong[.nmz]; archive into the configured local registry JSON file. It inserts the package metadata from #strong[module.json];, including summary, description, license, authors, repository, tags and package type when present, plus the source path and SHA-256 checksum, then writes #strong[registry.json.sha256];. When #strong[NELSON\_NMM\_REGISTRY\_SIGNING\_KEY]; holds an Ed25519 private seed (64 hexadecimal characters), it also writes the #strong[registry.json.sig]; sidecar: a JSON document carrying the Ed25519 signature of the exact registry bytes and the matching public key (see #strong[crypto.ed25519.sign];).

 #strong[nmm('publish', package\_filename, '-dry-run')]; verifies the archive, reads the target local registry and returns the registry entry that would be written without modifying files. #strong[nmm('publish', package\_filename, '-check')]; returns whether publication is currently possible. #strong[nmm('publish', package\_filename, '-force')]; explicitly replaces an existing entry with the same package and version. #strong[-json]; returns the publish report as JSON.

 #strong[nmm('publish', package\_filename, '-source', url)]; stores #strong[url]; (an #strong[http]; or #strong[https]; address, typically a release download link) as the archive source instead of the local packing path. The checksum is still computed from the published local archive, which must be identical to the hosted file. This is how a hosted registry references archives.

 A binary (builtin) package is architecture specific, so its archive is stored under an #strong[artifacts]; map keyed by architecture (for example #strong[win64]; and #strong[woa64];). Publishing another architecture of the same package version merges it into the same registry entry rather than replacing it, so a single name and version can ship several architectures published at different times; only re-publishing the same architecture needs #strong[-force];. When a package is installed, the archive matching the running architecture is selected. Source packages keep the platform #strong[all]; and a single source and checksum.

 

 #strong[nmm('init', destination\_dir, ...)]; assembles a #strong[module.json]; manifest from name\/value fields and sensible defaults, validates it with the same schema validator as #strong[validate];, and writes it in #strong[destination\_dir];. Defaults: #strong[version]; #strong[1.0.0];, #strong[platforms]; #strong[{'all'}];, #strong[nelson]; #strong[\>\=2.0.0];, #strong[builtin]; #strong[false];, empty #strong[dependencies];, and #strong[module]; derived from the destination folder name. #strong['Force', true]; overwrites an existing manifest, #strong['DryRun', true]; returns the struct without writing, #strong['Skeleton', true]; also drops a minimal loadable source tree, and #strong['Interactive', true]; prompts for missing required fields (disabled by default so #strong[--file]; scripts never block). It also echoes non-fatal best-practice warnings (missing #strong[repository];, #strong[authors];, #strong[keywords]; or #strong[description];) using the same linter as #strong[validate -warnings];. See #strong[nmm init]; for details.

 #strong[nmm('validate', module\_path)]; validates the module descriptor before installation or packaging. #strong[module\_path]; may be a module directory or a path to a lone #strong[module.json]; file (or any #strong[\*.json]; manifest): when a file is passed, only its manifest fields are validated and the source-tree layout checks are skipped.

 Validation checks required fields, module name syntax, semantic version syntax, supported platforms, Nelson version compatibility, builtin type, SPDX license expression, dependency declarations, and the source module layout. A valid source module must provide #strong[builder.m]; or #strong[loader.m];, #strong[etc\/startup.m];, #strong[etc\/finish.m];, #strong[help];, and #strong[tests];. Packaging also requires at least one test file and stops when a package test fails.

 #strong[nmm('validate', module\_path, '-strict')]; also requires publish-oriented metadata such as #strong[repository];, #strong[homepage]; and non-empty #strong[keywords];, plus at least one test and XML help file.

 #strong[nmm('validate', module\_path, '-warnings')]; returns non-blocking warnings for weak package metadata such as missing description, repository, authors or keywords, or placeholder-only help pages. The same recommended-field warnings are surfaced by #strong[nmm('init')]; when generating a manifest.

 #strong[nmm('validate', module\_path, '-json')]; returns a JSON validation report instead of raising validation errors.

 Packaged archives are also checked after build: #strong[loader.m]; and #strong[module-lock.json]; must exist before a #strong[.nmz]; archive is written or installed.

 

 #strong[nmm('audit')]; checks installed module records.

 The audit verifies installed paths, #strong[module.json];, #strong[module-lock.json];, locked platform compatibility, binary Nelson ABI compatibility, locked dependencies and lockfile checksums. It returns a struct with #strong[ok]; and #strong[issues]; fields.

 #strong[nmm('audit', package\_name)]; runs the same checks for a single installed package.

 #strong[nmm('audit', '-json')]; returns the same audit report encoded as JSON for CI usage.

 #strong[nmm('doctor')]; returns the audit report plus Nelson version, architecture, ABI tag, #strong[usermodulesdir()];, configured registry, cache directory and broken module names.

 #strong[nmm('doctor', package\_name)]; returns the same diagnostic information for one package and includes its #strong[status]; report.

 #strong[nmm('repair')]; removes broken #strong[modules.json]; entries whose installed path is missing. It returns the list of removed entries.

 

 #strong[nmm('search', query)];, #strong[nmm('info', package\_name)]; and #strong[nmm('versions', package\_name)]; read the configured registry index.

 #strong[nmm('search', query, '-json')];, #strong[nmm('info', package\_name, '-json')]; and #strong[nmm('versions', package\_name, '-json')]; return JSON output for CI and scripting workflows.

 By default #strong[search]; reports the whole registry regardless of the current machine. #strong[nmm('search', query, '-platform')]; keeps only the packages installable on the running architecture (their #strong[platforms]; contains #strong[computer('arch')]; or #strong[all];); it is opt-in so scripts get machine-independent results by default, and presentation layers such as the package manager window use it to hide packages built for another architecture.

 #strong[nmm('registry', 'check')]; verifies the configured registry (local file or remote source), its checksum sidecar and its Ed25519 signature sidecar, then returns a diagnostic report including the signing key, the trusted-key count and, for a remote registry, the cached copy and the offline state.

 #strong[nmm('registry', 'validate')]; is an alias for #strong[check];. #strong[nmm('registry', 'stats')]; returns registry entry counts, unique package counts, platform list and checksum\/signature counts. #strong[nmm('registry', 'list')]; returns the configured registry, packages and stats. #strong[nmm('registry', 'doctor')]; combines registry validation with duplicate, missing-source, unsigned and unchecksummed package reports.

 The registry source is #strong[NELSON\_NMM\_REGISTRY]; when set, otherwise #strong[registry.json]; in #strong[usermodulesdir()];. The source can be a local JSON file or a remote endpoint (#strong[http:\/\/];, #strong[https:\/\/]; or #strong[file:\/\/];). Local registry files must have a #strong[registry.json.sha256]; sidecar and are verified before they are read; when #strong[registry.json.sig]; is present, its Ed25519 signature must be valid and come from a trusted key. Remote registries are fetched as raw bytes together with #strong[registry.json.sig];, verified before the JSON is parsed, then cached in the nmm cache directory: when the source is unreachable, the last verified copy is re-verified and used (offline mode). A remote registry without signature is refused unless #strong[NELSON\_NMM\_REGISTRY\_ALLOW\_UNSIGNED\=1]; is set (a warning is emitted once per session). Trusted keys are the official Nelson registry keys embedded in Nelson, the keys listed in #strong[NELSON\_NMM\_REGISTRY\_PUBLIC\_KEY]; (';' separated, 64 hexadecimal characters each) and the key derived from #strong[NELSON\_NMM\_REGISTRY\_SIGNING\_KEY];. Installing an archive entry also verifies the package checksum before extraction.

 

 #strong[nmm('outdated')]; reports installed modules for which the registry contains a newer semantic version.

 #strong[nmm('update')]; updates installed modules to the latest registry version. With a module name, only that module is updated.

 #strong[nmm('update', module\_name, '-dry-run')]; reports the update plan without modifying installed modules.

 #strong[nmm('update', '-dry-run')]; reports the update plan for all installed modules without modifying installed modules.

 

 #strong[nmm('cache', 'dir')]; returns the local archive cache directory and #strong[nmm('cache', 'clear')]; clears it. Installing a checked #strong[.nmz]; archive stores it in the cache.

 #strong[nmm('cache', 'list')]; lists offline packages currently available in the local cache.

 #strong[nmm('cache', 'size')]; returns archive count and total cached bytes. #strong[nmm('cache', 'remove', package\_name, version)]; removes one cached archive and its checksum sidecar.

 #strong[nmm('cache', 'info', package\_name, version)]; returns the cached archive path, checksum, size and date. #strong[nmm('cache', 'has', package\_name, version)]; returns true when that archive is available.

 #strong[nmm('cache', 'add', package\_filename)]; verifies and preloads a local #strong[.nmz]; archive into the cache. #strong[nmm('cache', 'export', destination\_dir)]; copies cached archives and checksum sidecars to a directory. #strong[nmm('cache', 'import', source\_dir)]; verifies and imports cached archives from a directory.

 #strong[nmm('cache', 'verify')]; verifies cached archives and reports corrupted entries. #strong[nmm('cache', 'prune')]; removes older cached versions while keeping the latest cached version of each package. #strong[nmm('cache', 'prune', '-dry-run')]; reports the same removals without deleting files.

 #strong[nmm('install', package\_name, '-offline')]; installs the newest cached package version without reading the registry or package source.

 #strong[nmm('install', package\_name, version, '-offline')]; installs an exact cached package version, or the newest cached version matching a semver constraint, without reading the registry or package source. Add #strong['-dry-run']; to verify the cached archive plan without installing it.

 


== Examples

Deploy module\_skeleton\_basic template

``````matlab
if ~ismodule('module_skeleton_basic')
    nmm('install', 'https://github.com/nelson-lang/module_skeleton_basic.git#v1.0.0');
    macro_sum(3, 4)
    nmm('uninstall', 'module_skeleton_basic')
end
``````

Package a module

``````matlab
if ~ismodule('module_skeleton_basic')
    nmm('install', 'https://github.com/nelson-lang/module_skeleton_basic.git#v1.0.0');
end
package_filename = nmm('package', 'module_skeleton_basic', tempdir())

``````


== See also

#nlink(<modules_manager:ismodule>)[ismodule];, #nlink(<modules_manager:getmodules>)[getmodules];, #nlink(<nmm_gui:nmm_gui>)[nmm\_gui];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [package manager workflows, registry, lockfile and cache improvements],
)

// Author: Allan CORNET
