# nmm

Nelson Modules Manager.

## 📝 Syntax

- st = nmm('list')
- st\_json = nmm('list', '-json')
- commands = nmm('commands')
- commands\_json = nmm('commands', '-json')
- report = nmm('help')
- report\_json = nmm('help', '-json')
- report = nmm('help', command)
- report\_json = nmm('help', command, '-json')
- report = nmm(command, ..., '-quiet')
- nmm('load', module\_name)
- nmm('load', module\_name, version)
- report = nmm('verify', package\_filename)
- report = nmm('verify', module\_path)
- lock = nmm('lock', module\_path)
- lock = nmm('lock', module\_path, '-dry-run')
- report = nmm('lock', module\_path, '-check')
- report = nmm('lock', module\_path, '-diff')
- report = nmm('config')
- report = nmm('pin', module\_name)
- report = nmm('pin', module\_name, version)
- report = nmm('unpin', module\_name)
- report = nmm('why', package\_name)
- report = nmm('why', install\_report, package\_name)
- json\_text = nmm('why', package\_name, '-json')
- report = nmm('tree', package\_name)
- report = nmm('tree', install\_report)
- json\_text = nmm('tree', package\_name, '-json')
- deps = nmm('deps', package\_name)
- deps = nmm('deps', install\_report)
- json\_text = nmm('deps', package\_name, '-json')
- rdeps = nmm('rdeps', package\_name)
- status = nmm('status', package\_name)
- report = nmm('explain', package\_name)
- graph = nmm('graph', package\_name)
- versions = nmm('installed', package\_name)
- info = nmm('latest', package\_name)
- report = nmm('resolve', package\_name, version\_spec)
- tf = nmm('satisfies', version, version\_spec)
- l = nmm('autoload', module\_name)
- nmm('autoload', module\_name, state)
- nmm('install', git\_url)
- nmm('install', module\_path, '-tests')
- nmm('install', module\_path, '-no-tests')
- nmm('install', git\_url, '-tests')
- report = nmm('install', package\_filename, '-dry-run')
- report = nmm('install', package\_filename, '-force')
- report = nmm('install', package\_name, '-dry-run')
- nmm('install', package\_name, version)
- report = nmm('install', package\_name, version, '-dry-run')
- nmm('install', package\_name, version, '-tests')
- nmm('install', package\_name, version, '-no-tests')
- nmm('install', package\_name, version, '-force')
- report = nmm('install', package\_name, version, '-offline', '-dry-run')
- nmm('uninstall', module\_name)
- nmm('uninstall', module\_name, version)
- nmm('remove', module\_name)
- report = nmm('remove', module\_name, '-dry-run')
- report = nmm('remove', module\_name, '-force')
- nmm('remove', module\_name, version)
- report = nmm('remove', module\_name, version, '-dry-run')
- orphans = nmm('orphans')
- orphans\_json = nmm('orphans', '-json')
- report = nmm('autoremove')
- report = nmm('autoremove', '-dry-run')
- report\_json = nmm('autoremove', '-dry-run', '-json')
- package\_filename = nmm('package', module\_name, destination\_dir)
- package\_filename = nmm('pack', module\_path, destination\_dir)
- report = nmm('pack', module\_path, '-dry-run')
- report = nmm('pack', module\_path, destination\_dir, '-dry-run')
- package\_filename = nmm('pack', module\_path, destination\_dir, '-no-tests')
- report = nmm('publish', package\_filename)
- report = nmm('publish', package\_filename, '-dry-run')
- report = nmm('publish', package\_filename, '-check')
- report = nmm('publish', package\_filename, '-force')
- json\_text = nmm('publish', package\_filename, '-json')
- report = nmm('publish', package\_filename, '-source', url)
- module\_json\_path = nmm('init', destination\_dir, field1, value1, ...)
- data = nmm('init', destination\_dir, ..., 'DryRun', true)
- module\_json\_path = nmm('init', destination\_dir, ..., 'Skeleton', true)
- module\_json\_path = nmm('init', destination\_dir, 'Interactive', true)
- tf = nmm('validate', module\_path)
- tf = nmm('validate', module\_json\_file)
- tf = nmm('validate', module\_path, '-strict')
- report = nmm('validate', module\_path, '-warnings')
- json\_text = nmm('validate', module\_path, '-json')
- report = nmm('audit')
- report = nmm('audit', package\_name)
- json\_text = nmm('audit', '-json')
- report = nmm('doctor')
- report = nmm('doctor', package\_name)
- json\_text = nmm('doctor', package\_name, '-json')
- report = nmm('repair')
- packages = nmm('search', query)
- json\_text = nmm('search', query, '-json')
- packages = nmm('search', query, '-platform')
- info = nmm('info', package\_name)
- info = nmm('info', package\_name, version)
- json\_text = nmm('info', package\_name, '-json')
- versions = nmm('versions', package\_name)
- json\_text = nmm('versions', package\_name, '-json')
- report = nmm('registry', 'list')
- report = nmm('registry', 'check')
- report = nmm('registry', 'validate')
- report = nmm('registry', 'stats')
- report = nmm('registry', 'doctor')
- outdated = nmm('outdated')
- outdated = nmm('outdated', module\_name)
- json\_text = nmm('outdated', module\_name, '-json')
- report = nmm('update')
- report = nmm('update', '-dry-run')
- report = nmm('update', module\_name)
- report = nmm('update', module\_name, '-dry-run')
- cache\_dir = nmm('cache', 'dir')
- cache\_packages = nmm('cache', 'list')
- report = nmm('cache', 'size')
- info = nmm('cache', 'info', package\_name, version)
- tf = nmm('cache', 'has', package\_name, version)
- report = nmm('cache', 'add', package\_filename)
- report = nmm('cache', 'export', destination\_dir)
- report = nmm('cache', 'import', source\_dir)
- report = nmm('cache', 'remove', package\_name, version)
- report = nmm('cache', 'verify')
- report = nmm('cache', 'prune')
- report = nmm('cache', 'prune', '-dry-run')
- status = nmm('cache', 'clear')
- nmm('install', package\_name, '-offline')
- nmm('install', package\_name, version, '-offline')

## 📥 Input argument

- query - a string: text to search in registry package metadata.
- package\_name - a string: package name in the configured registry.
- version - a string: exact package version or semver constraint.
- module\_path - a string: path to a module directory containing module.json.
- module\_name - a string: short module's name.
- state - a logical: true will autoload module at startup, false disable autoload for this module.
- git\_url - a string: a git url (http/https protocol).
- destination\_dir - a string: an existing destination directory where archive will be created.

## 📤 Output argument

- outdated - a struct array: installed modules with newer registry versions.
- cache\_dir - a string: local nmm cache directory.
- cache\_packages - a struct array: cached packages with name, version, path and has\_sha256 fields.
- json\_text - a string: JSON encoded audit report.
- status - a logical: true when the cache command succeeds.
- packages - a struct array: matching registry package entries.
- info - a struct: registry package entry.
- versions - a cell of strings: package versions listed in the registry.
- report - a struct: audit status with ok and issues fields.
- tf - a logical: true if module.json is valid, otherwise an error is raised.
- st - a struct: list of installed modules.
- l - a logical: current state of autoload.
- package\_filename - a string: filename.
- lock - a struct: generated module-lock.json content.

## 📄 Description


<b>nmm</b> is the Nelson Modules Manager. 

Installations are prepared in a temporary staging directory, built, locked, and then copied to the final user modules directory. If an error occurs before completion, <b>nmm</b> rolls back the partially installed module. 

Source module dependencies declared in <b>module.json</b> are resolved before the module is built. When a source module already provides <b>module-lock.json</b>, its exact locked dependency versions are used instead of the declarative ranges. Local paths, archives and HTTP Git repositories are installed recursively. Version constraints are checked against already installed dependencies and conflicts stop the installation before the module is copied. Source installs build the module in staging before committing it to the final modules directory. Package tests are not run at install time by default: pass <b>-tests</b> to run them, or set the environment variable <b>NELSON\_NMM\_INSTALL\_TESTS=1</b> to run them for every source install; <b>-no-tests</b> is still accepted. A registry entry declaring <b>"tests": "required"</b> always runs the package tests, and the install fails when they do. Prebuilt archives never run tests: they were tested when packed (<b>nmm pack</b> requires passing tests). If a source install fails, an already installed version of the same module remains installed and active. 

Source modules and prebuilt archives are validated before installation. Packages whose <b>nelson</b> compatibility range does not match the running Nelson version are rejected before build or final copy. 

Source-based distribution packages allows to have optimized packages for your computer and allows to have distributed repositories. 

Installed modules are locally built and can require an C/C++. 

 

<b>st = nmm('list')</b> get list of installed modules. This reads the local installed-module registry without network access or package loading and requires only the json module, not webtools or file\_archiver. The -json and -quiet forms have the same dependencies. 

Add <b>'-json'</b> to <b>list</b>, <b>commands</b>, <b>help</b>, <b>tree</b>, <b>why</b>, <b>deps</b>, <b>outdated</b> or <b>doctor</b> to return the same report encoded as JSON for scripts. 

Add <b>'-quiet'</b> as the last argument to suppress command output while preserving returned values. This is intended for CI scripts around commands that run builders or tests. 

<b>nmm('commands')</b> returns a short scriptable list of supported command groups, syntax examples and aliases. <b>nmm('help')</b> lists command names. <b>nmm('help', command)</b> returns the entry for one command or alias. 

<b>nmm('config')</b> reports the configured registry, cache directory, user modules directory, signing-key state, trusted registry key count, unsigned-registry opt-out and offline cache count. 

 

<b>nmm('install', git\_url)</b> install a distant module. 

About git\_url, in this example 'https://github.com/nelson-lang/module\_skeleton\_basic.git#v1.0.0' 

'#v1.0.0' is defined as #<commit-ish>, it allows to clone exactly an commit. 

The commit-ish can be a tag (exact version), and an sha1 (exac commit) or an branch name. 

Without commit-ish, master branch will be used. 

 

<b>nmm('install', package\_name, version)</b> installs an exact package version or the newest package version matching a semver constraint from the configured registry. The registry entry must contain an install source through <b>source</b>, <b>url</b> or <b>archive</b>. Dependencies declared by the registry entry are resolved recursively before the requested package is installed. 

Accepted semver constraints include forms such as <b>>=1.2.0</b>, <b>~1.4</b> and <b>^2.0.0</b>. 

Registry installs reject entries whose <b>platforms</b> or <b>nelson</b> metadata are not compatible with the current runtime before reading the package source. 

<b>nmm('install', package\_name, '-dry-run')</b> resolves the latest compatible registry package. <b>nmm('install', package\_name, version, '-dry-run')</b> resolves the registry package and its recursive dependencies, verifies compatibility and local archive checksums when available, and returns an install plan without changing installed modules or the cache. 

<b>nmm('install', package\_name, version, '-tests')</b> installs a registry package and runs its package tests when its source is a local source tree or a Git repository; <b>-no-tests</b> skips them explicitly (the default, unless the registry entry declares <b>"tests": "required"</b>). <b>nmm('install', package\_name, version, '-force')</b> reinstalls the registry package version, replacing an already installed copy when necessary. 

 

<b>nmm('install', filename\_nmz)</b> install an prebuilt external module. 

Prebuilt archives must contain <b>module-lock.json</b>. Dependencies listed in this lock file must already be installed and the archive platform must match the current architecture or be <b>all</b>. Binary packages also require the locked Nelson architecture and ABI tag to match the running Nelson build. If a sibling <b>.sha256</b> checksum file exists, it is verified before extraction. 

<b>nmm('install', module\_path, '-tests')</b> installs a local source module (or a Git repository) and runs its package tests before registering it; <b>nmm('install', module\_path, '-no-tests')</b> skips them explicitly. Without an option, tests are not run unless <b>NELSON\_NMM\_INSTALL\_TESTS=1</b> is set. 

<b>nmm('install', package\_filename, '-dry-run')</b> verifies an archive install plan without writing to <b>modules.json</b> or copying files into the user modules directory. 

<b>nmm('install', package\_filename, '-force')</b> reinstalls the same checked archive version by uninstalling the already installed version after the archive dry-run validation succeeds. 

<b>nmm('verify', package\_filename)</b> verifies a <b>.nmz</b> archive without installing it. It checks package structure, <b>module.json</b>, <b>module-lock.json</b>, embedded lockfile checksums, optional <b>.sha256</b> sidecar, and Nelson architecture or ABI compatibility for binary packages. <b>nmm('verify', module\_path)</b> verifies that a source module lockfile is up to date. 

 

<b>nmm('load', module\_name)</b> load an installed module for current session. 

<b>nmm('load', module\_name, version)</b> loads a specific installed version of a module. 

Multiple versions of the same module can be installed side by side. The active version is the newest installed version unless a version has been pinned. 

<b>nmm('pin', module\_name, version)</b> selects the default active version and records it in <b>modules.json</b> as <b>pinned\_version</b>. If the version is omitted, the current active version is pinned. 

<b>nmm('unpin', module\_name)</b> removes <b>pinned\_version</b> without uninstalling the module and makes the newest installed version active. 

<b>nmm('why', package\_name)</b> explains which installed modules require an installed package by reading installed <b>module-lock.json</b> dependencies. <b>nmm('why', install\_report, package\_name)</b> explains why a package appears in a registry dry-run install plan. 

<b>nmm('tree', package\_name)</b> returns the installed dependency tree for a package by reading <b>module-lock.json</b>. <b>nmm('tree', install\_report)</b> returns the dependency tree represented by a registry dry-run install plan. The report includes nested dependencies, missing packages and conflicts. 

<b>nmm('deps', package\_name)</b> and <b>nmm('deps', install\_report)</b> return a flat dependency list from an installed package tree or registry dry-run install plan. <b>nmm('rdeps', package\_name)</b> returns installed packages that depend on a package. <b>nmm('status', package\_name)</b> returns a scriptable summary of the installed package state, active version, lockfile, missing dependencies and reverse dependencies. 

<b>nmm('explain', package\_name)</b> combines status, dependency tree and reverse dependency information into a scriptable report with human-readable summary lines. <b>nmm('graph', package\_name)</b> exports the installed dependency graph as DOT and Mermaid text. 

<b>nmm('installed', package\_name)</b> returns locally installed versions only. <b>nmm('latest', package\_name)</b> returns the latest compatible registry package. <b>nmm('resolve', package\_name, version\_spec)</b> returns the exact compatible registry version selected for a version constraint without installing it. <b>nmm('satisfies', version, version\_spec)</b> checks a version against an exact version or semver constraint. 

 

<b>l = nmm('autoload', module\_name</b> returns current state autoload for <b>module\_name</b>. 

 

<b>nmm('autoload', module\_name, state)</b> marks an installed modules "marked" as autoload at startup. 

By default modules are marked as autoload. 

 

<b>nmm('uninstall', module\_name)</b> uninstall an installed module. 

<b>nmm('remove', module\_name)</b> is an alias for <b>nmm('uninstall', module\_name)</b>. Removal returns a report when requested, including removed paths, reverse dependencies and whether the operation changed installed modules. 

<b>nmm('remove', module\_name, version)</b> removes only the selected installed version. Without a version argument, all installed versions of the module are removed. <b>nmm('remove', module\_name, '-dry-run')</b> reports the impact without deleting files. By default, removal is refused when installed modules still require the package; use <b>-force</b> to remove it anyway. 

<b>nmm('orphans')</b> lists auto-installed dependency packages that are no longer reachable from explicitly installed modules. <b>nmm('autoremove', '-dry-run')</b> reports those packages without deleting them, and <b>nmm('autoremove')</b> removes them with explicit force because they are already classified as orphan dependencies. Both commands support <b>'-json'</b> output for scripting. 

 

<b>nmm('package', module\_name, destination\_dir)</b> packages an module as a zip file. 

The generated <b>module-lock.json</b> stores exact installed dependency versions, lock format, package type (<b>source</b> or <b>binary</b>), source metadata, Nelson version, architecture, ABI tag and checksums for key installed files such as <b>module.json</b>, <b>loader.m</b>, <b>builder.m</b> and the startup or finish scripts. The packaged module records the dependency set, runtime context and file integrity state used at build time. 

Packaging also writes <b>package\_filename.sha256</b>. This sidecar is optional for single-file distribution: installing or publishing a <b>.nmz</b> archive verifies it when present, and otherwise relies on the checksums embedded in <b>module-lock.json</b>. 

 

<b>nmm('pack', module\_path, destination\_dir)</b> validates and builds a source module in a temporary staging directory, runs the module tests with fail-fast behavior, generates <b>module-lock.json</b>, then creates a <b>.nmz</b> archive and its <b>.sha256</b> checksum. 

<b>nmm('pack', module\_path, '-dry-run')</b> validates, builds, tests and computes the lockfile without creating an archive. With a destination directory, the report also includes the archive path that would be written. 

<b>nmm('pack', module\_path, destination\_dir, '-no-tests')</b> creates the archive without running package tests. This is intended for local development archives only. 

By default the archive excludes version-control directories, build output (<b>bin/</b>, <b>x64/</b>, object and library files, cmake caches) and editor junk, so a packaged module is clean without any configuration. A <b>.nmignore</b> file at the module root adds further excludes with gitignore-style patterns (<b>#</b> comments, <b>\*</b>, <b>\*\*</b>, a trailing <b>/</b> for a directory, a leading <b>!</b> to re-include, an unslashed name matches at any depth while a slashed pattern is anchored to the module root); a file whose parent directory is excluded cannot be re-included. An optional <b>files</b> array in <b>module.json</b> is an allowlist of glob patterns: when present, only the matching files are packaged (still minus the default excludes, and always keeping <b>module.json</b>, <b>module-lock.json</b> and <b>loader.m</b>). <b>nmm('pack', module\_path, '-dry-run')</b> lists the exact files that would be packaged, so the selection can be checked before an archive is written. 

<b>nmm('lock', module\_path)</b> builds the source loader when needed and writes or refreshes <b>module-lock.json</b> in the source tree without installing or packaging the module. <b>nmm('lock', module\_path, '-dry-run')</b> returns the computed lock without writing it. <b>nmm('lock', module\_path, '-check')</b> reports whether the current lockfile is up to date. <b>nmm('lock', module\_path, '-diff')</b> also returns the current and expected lock data. 

<b>nmm('publish', package\_filename)</b> publishes a checked <b>.nmz</b> archive into the configured local registry JSON file. It inserts the package metadata from <b>module.json</b>, including summary, description, license, authors, repository, tags and package type when present, plus the source path and SHA-256 checksum, then writes <b>registry.json.sha256</b>. When <b>NELSON\_NMM\_REGISTRY\_SIGNING\_KEY</b> holds an Ed25519 private seed (64 hexadecimal characters), it also writes the <b>registry.json.sig</b> sidecar: a JSON document carrying the Ed25519 signature of the exact registry bytes and the matching public key (see <b>crypto.ed25519.sign</b>). 

<b>nmm('publish', package\_filename, '-dry-run')</b> verifies the archive, reads the target local registry and returns the registry entry that would be written without modifying files. <b>nmm('publish', package\_filename, '-check')</b> returns whether publication is currently possible. <b>nmm('publish', package\_filename, '-force')</b> explicitly replaces an existing entry with the same package and version. <b>-json</b> returns the publish report as JSON. 

<b>nmm('publish', package\_filename, '-source', url)</b> stores <b>url</b> (an <b>http</b> or <b>https</b> address, typically a release download link) as the archive source instead of the local packing path. The checksum is still computed from the published local archive, which must be identical to the hosted file. This is how a hosted registry references archives. 

A binary (builtin) package is architecture specific, so its archive is stored under an <b>artifacts</b> map keyed by architecture (for example <b>win64</b> and <b>woa64</b>). Publishing another architecture of the same package version merges it into the same registry entry rather than replacing it, so a single name and version can ship several architectures published at different times; only re-publishing the same architecture needs <b>-force</b>. When a package is installed, the archive matching the running architecture is selected. Source packages keep the platform <b>all</b> and a single source and checksum. 

 

<b>nmm('init', destination\_dir, ...)</b> assembles a <b>module.json</b> manifest from name/value fields and sensible defaults, validates it with the same schema validator as <b>validate</b>, and writes it in <b>destination\_dir</b>. Defaults: <b>version</b> <b>1.0.0</b>, <b>platforms</b> <b>{'all'}</b>, <b>nelson</b> <b>>=2.0.0</b>, <b>builtin</b> <b>false</b>, empty <b>dependencies</b>, and <b>module</b> derived from the destination folder name. <b>'Force', true</b> overwrites an existing manifest, <b>'DryRun', true</b> returns the struct without writing, <b>'Skeleton', true</b> also drops a minimal loadable source tree, and <b>'Interactive', true</b> prompts for missing required fields (disabled by default so <b>--file</b> scripts never block). It also echoes non-fatal best-practice warnings (missing <b>repository</b>, <b>authors</b>, <b>keywords</b> or <b>description</b>) using the same linter as <b>validate -warnings</b>. See <b>nmm init</b> for details. 

<b>nmm('validate', module\_path)</b> validates the module descriptor before installation or packaging. <b>module\_path</b> may be a module directory or a path to a lone <b>module.json</b> file (or any <b>\*.json</b> manifest): when a file is passed, only its manifest fields are validated and the source-tree layout checks are skipped. 

Validation checks required fields, module name syntax, semantic version syntax, supported platforms, Nelson version compatibility, builtin type, SPDX license expression, dependency declarations, and the source module layout. A valid source module must provide <b>builder.m</b> or <b>loader.m</b>, <b>etc/startup.m</b>, <b>etc/finish.m</b>, <b>help</b>, and <b>tests</b>. Packaging also requires at least one test file and stops when a package test fails. 

<b>nmm('validate', module\_path, '-strict')</b> also requires publish-oriented metadata such as <b>repository</b>, <b>homepage</b> and non-empty <b>keywords</b>, plus at least one test and XML help file. 

<b>nmm('validate', module\_path, '-warnings')</b> returns non-blocking warnings for weak package metadata such as missing description, repository, authors or keywords, or placeholder-only help pages. The same recommended-field warnings are surfaced by <b>nmm('init')</b> when generating a manifest. 

<b>nmm('validate', module\_path, '-json')</b> returns a JSON validation report instead of raising validation errors. 

Packaged archives are also checked after build: <b>loader.m</b> and <b>module-lock.json</b> must exist before a <b>.nmz</b> archive is written or installed. 

 

<b>nmm('audit')</b> checks installed module records. 

The audit verifies installed paths, <b>module.json</b>, <b>module-lock.json</b>, locked platform compatibility, binary Nelson ABI compatibility, locked dependencies and lockfile checksums. It returns a struct with <b>ok</b> and <b>issues</b> fields. 

<b>nmm('audit', package\_name)</b> runs the same checks for a single installed package. 

<b>nmm('audit', '-json')</b> returns the same audit report encoded as JSON for CI usage. 

<b>nmm('doctor')</b> returns the audit report plus Nelson version, architecture, ABI tag, <b>usermodulesdir()</b>, configured registry, cache directory and broken module names. 

<b>nmm('doctor', package\_name)</b> returns the same diagnostic information for one package and includes its <b>status</b> report. 

<b>nmm('repair')</b> removes broken <b>modules.json</b> entries whose installed path is missing. It returns the list of removed entries. 

 

<b>nmm('search', query)</b>, <b>nmm('info', package\_name)</b> and <b>nmm('versions', package\_name)</b> read the configured registry index. 

<b>nmm('search', query, '-json')</b>, <b>nmm('info', package\_name, '-json')</b> and <b>nmm('versions', package\_name, '-json')</b> return JSON output for CI and scripting workflows. 

By default <b>search</b> reports the whole registry regardless of the current machine. <b>nmm('search', query, '-platform')</b> keeps only the packages installable on the running architecture (their <b>platforms</b> contains <b>computer('arch')</b> or <b>all</b>); it is opt-in so scripts get machine-independent results by default, and presentation layers such as the package manager window use it to hide packages built for another architecture. 

<b>nmm('registry', 'check')</b> verifies the configured registry (local file or remote source), its checksum sidecar and its Ed25519 signature sidecar, then returns a diagnostic report including the signing key, the trusted-key count and, for a remote registry, the cached copy and the offline state. 

<b>nmm('registry', 'validate')</b> is an alias for <b>check</b>. <b>nmm('registry', 'stats')</b> returns registry entry counts, unique package counts, platform list and checksum/signature counts. <b>nmm('registry', 'list')</b> returns the configured registry, packages and stats. <b>nmm('registry', 'doctor')</b> combines registry validation with duplicate, missing-source, unsigned and unchecksummed package reports. 

The registry source is <b>NELSON\_NMM\_REGISTRY</b> when set, otherwise <b>registry.json</b> in <b>usermodulesdir()</b>. The source can be a local JSON file or a remote endpoint (<b>http://</b>, <b>https://</b> or <b>file://</b>). Local registry files must have a <b>registry.json.sha256</b> sidecar and are verified before they are read; when <b>registry.json.sig</b> is present, its Ed25519 signature must be valid and come from a trusted key. Remote registries are fetched as raw bytes together with <b>registry.json.sig</b>, verified before the JSON is parsed, then cached in the nmm cache directory: when the source is unreachable, the last verified copy is re-verified and used (offline mode). A remote registry without signature is refused unless <b>NELSON\_NMM\_REGISTRY\_ALLOW\_UNSIGNED=1</b> is set (a warning is emitted once per session). Trusted keys are the official Nelson registry keys embedded in Nelson, the keys listed in <b>NELSON\_NMM\_REGISTRY\_PUBLIC\_KEY</b> (';' separated, 64 hexadecimal characters each) and the key derived from <b>NELSON\_NMM\_REGISTRY\_SIGNING\_KEY</b>. Installing an archive entry also verifies the package checksum before extraction. 

 

<b>nmm('outdated')</b> reports installed modules for which the registry contains a newer semantic version. 

<b>nmm('update')</b> updates installed modules to the latest registry version. With a module name, only that module is updated. 

<b>nmm('update', module\_name, '-dry-run')</b> reports the update plan without modifying installed modules. 

<b>nmm('update', '-dry-run')</b> reports the update plan for all installed modules without modifying installed modules. 

 

<b>nmm('cache', 'dir')</b> returns the local archive cache directory and <b>nmm('cache', 'clear')</b> clears it. Installing a checked <b>.nmz</b> archive stores it in the cache. 

<b>nmm('cache', 'list')</b> lists offline packages currently available in the local cache. 

<b>nmm('cache', 'size')</b> returns archive count and total cached bytes. <b>nmm('cache', 'remove', package\_name, version)</b> removes one cached archive and its checksum sidecar. 

<b>nmm('cache', 'info', package\_name, version)</b> returns the cached archive path, checksum, size and date. <b>nmm('cache', 'has', package\_name, version)</b> returns true when that archive is available. 

<b>nmm('cache', 'add', package\_filename)</b> verifies and preloads a local <b>.nmz</b> archive into the cache. <b>nmm('cache', 'export', destination\_dir)</b> copies cached archives and checksum sidecars to a directory. <b>nmm('cache', 'import', source\_dir)</b> verifies and imports cached archives from a directory. 

<b>nmm('cache', 'verify')</b> verifies cached archives and reports corrupted entries. <b>nmm('cache', 'prune')</b> removes older cached versions while keeping the latest cached version of each package. <b>nmm('cache', 'prune', '-dry-run')</b> reports the same removals without deleting files. 

<b>nmm('install', package\_name, '-offline')</b> installs the newest cached package version without reading the registry or package source. 

<b>nmm('install', package\_name, version, '-offline')</b> installs an exact cached package version, or the newest cached version matching a semver constraint, without reading the registry or package source. Add <b>'-dry-run'</b> to verify the cached archive plan without installing it. 



## 💡 Examples

Deploy module_skeleton_basic template

```matlab
if ~ismodule('module_skeleton_basic')
    nmm('install', 'https://github.com/nelson-lang/module_skeleton_basic.git#v1.0.0');
    macro_sum(3, 4)
    nmm('uninstall', 'module_skeleton_basic')
end
```
Package a module

```matlab
if ~ismodule('module_skeleton_basic')
    nmm('install', 'https://github.com/nelson-lang/module_skeleton_basic.git#v1.0.0');
end
package_filename = nmm('package', 'module_skeleton_basic', tempdir())

```


## 🔗 See also

[ismodule](../modules_manager/ismodule.md), [getmodules](../modules_manager/getmodules.md), [nmm_gui](../nmm_gui/nmm_gui.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 2.0.0   | package manager workflows, registry, lockfile and cache improvements |

<!--
## 👤 Author

Allan CORNET
-->
