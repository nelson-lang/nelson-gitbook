#import "nelson_help.typ": *

= module.json <modules_manager:module-json>

module.json description

== Description

A module.json file is required for each Nelson external module and is used by the #strong[nmm]; function to manage the module.

 

 #strong[module];: unique identifier module short name (alphanumeric characters), example: "module\_skeleton\_basic"

 #strong[title];: complete module name (human friendly name), example: "Module skeleton basic"

 #strong[summary];: one line description, example: "Skeleton of a basic nelson package"

 #strong[version];: version number using semantic versioning, example: "1.0.0"

 #strong[platforms];: platforms supported.

 "all" for all platforms

 others platforms:

 "win32": windows 32 bits

 "win64": windows 64 bits

 "maci64": macos 64 bits build

 "maca64": macos Apple silicon build

 "maci32": macos 32 bits build

 "glnxa64": linux 64 bits build

 "glnxa32": linux 64 bits build

 example: #strong[\["win64", "glnxa64"\]];, module will be available only on windows and linux 64 bits platforms.

 The current architecture must match one listed platform exactly, unless #strong[all]; is listed.

 #strong[nelson];: nelson's supported versions, example: " \<2.0.0" (default)

 #strong[builtin];: true if module requires C\/C++ compiler, false if module have only macros.

 #strong[author];: Author information: name, email and website

 Example:

 {

 "name": "Allan CORNET",

 "email": "nelson.numerical.computation\@gmail.com",

 "url": "https:\/\/nelson-lang.github.io\/nelson-website\/"

 }

 

 #strong[homepage];: homepage of the module, example "https:\/\/github.com\/nelson-lang\/module\_skeleton\_basic"

 #strong[issues];: optional issue-tracker URL of the module, example "https:\/\/github.com\/nelson-lang\/module\_skeleton\_basic\/issues"

 #strong[documentation];: optional documentation URL of the module, example "https:\/\/nelson-lang.github.io\/nelson-website\/"

 #strong[description];: full description of the module, markdown format supported, example: "nelson's module skeleton (macros only)"

 #strong[copyright]; copyright description, example: "Copyright © 2019-present Allan CORNET"

 #strong[license];: SPDX license expression under which the toolbox will be published, example: "BSD-3-Clause", "MIT" or "LGPL-3.0-or-later OR GPL-3.0-or-later".

 #strong[keywords];: keywords describing your module.

 Example:

 \["interpreter", "scientific-computing", "programming-language", "matrix-functions", "skeleton"\]

 

 #strong[dependencies];: list of modules dependencies {} (default) or name : url values

 {

 "module\_a": "https:\/\/module\_a.git\#v1.0.0",

 "module\_b": "https:\/\/module\_b.git\#v1.0.0"

 }

 During package creation, installed dependency versions are resolved into #strong[module-lock.json];. The lock file also records its format version, package type (#strong[source]; or #strong[binary];), source metadata, Nelson version, architecture, ABI tag and checksums for key installed files. A packaged #strong[.nmz]; archive can be installed only when these locked dependencies are already installed. Binary packages also require the locked Nelson architecture and ABI tag to match the running Nelson build.

 When installing a source module, dependency values can be local paths, #strong[.nmz]; archives, HTTP Git repositories, exact versions or semver constraints. Source dependencies are installed recursively before the module is built. If the source tree already contains #strong[module-lock.json];, its exact dependency versions are used for a reproducible install. Source installs build and run tests in a temporary staging directory before the module is committed to the final install location. A failed source install keeps any previous installed version of the same module intact.

 A #strong[.nmz]; archive can be accompanied by a #strong[.sha256]; checksum file. #strong[nmm]; verifies this checksum when it is present, and otherwise verifies the file checksums embedded in #strong[module-lock.json]; after extraction.

 

 #strong[nmm('validate', module\_path)]; checks that these required fields are present and well formed before installation or packaging.

 #strong[nmm('validate', module\_path, '-strict')]; adds publish-oriented checks for #strong[repository];, #strong[homepage];, non-empty #strong[keywords];, at least one test file and at least one XML help file.

 In strict mode, #strong[repository]; and #strong[homepage]; must be HTTP or HTTPS URLs. The optional #strong[issues]; and #strong[documentation]; fields are validated only when present and must then be HTTP or HTTPS URLs. #strong[nmm('validate', module\_path, '-json')]; returns a machine-readable validation report.

 Validation also checks the package layout: a source module must include #strong[builder.m]; or #strong[loader.m];, #strong[etc\/startup.m];, #strong[etc\/finish.m];, #strong[help];, and #strong[tests];. Packaging requires at least one test file and runs the package tests before writing an archive.

 #strong[nmm('pack', module\_path, destination\_dir)]; uses this descriptor to build a source module and create a reproducible package archive with a lock file and checksum.

 #strong[nmm('lock', module\_path)]; writes or refreshes #strong[module-lock.json]; for a source module without installing or packaging it.

 #strong[nmm('publish', package\_filename)]; reads the package lock file and #strong[module.json];, then writes a local registry entry containing package metadata, the package source path and SHA-256 checksum. It also writes a #strong[registry.json.sha256]; sidecar. When #strong[NELSON\_NMM\_REGISTRY\_SIGNING\_KEY]; is set, it writes and verifies a keyed #strong[registry.json.sig]; sidecar too. Registry archive installs verify the package checksum and local registry files require the checksum sidecar.

 

 A registry index is a JSON document with a #strong[packages]; array. Each package entry contains package metadata such as name, version, package type, platforms, Nelson compatibility, dependencies, checksum and optional package signature metadata. An installable entry also contains #strong[source];, #strong[url]; or #strong[archive];. Dependencies declared by an installable entry are resolved recursively before the package source is installed. #strong[nmm('search')];, #strong[nmm('info')]; and #strong[nmm('versions')]; read this index.

 Registry versions are also used by #strong[nmm('outdated')]; and #strong[nmm('update')];. Checked #strong[.nmz]; archives are cached locally and can be reused by offline installs.

 Several versions of the same module can be installed side by side. #strong[modules.json]; stores the active version in the top-level #strong[path]; and #strong[version]; fields, stores all installed versions in #strong[versions];, and stores an explicit default in #strong[pinned\_version]; when #strong[nmm('pin')]; is used.


== Example

Deploy module\_skeleton and module\_skeleton\_basic template

``````matlab
if ~ismodule('module_skeleton_basic')
    nmm('install', 'https://github.com/nelson-lang/module_skeleton_basic.git#v1.0.0');
end
if ~ismodule('module_skeleton')
    nmm('install', 'https://github.com/nelson-lang/module_skeleton.git#v1.0.0');
end
modules_installed = nmm('list');
edit([modules_installed.module_skeleton.path, 'module.json']);
edit([modules_installed.module_skeleton_basic.path, 'module.json']);

``````


== See also

#nlink(<modules_manager:nmm>)[nmm];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [lockfile, registry and strict validation metadata],
)

// Author: Allan CORNET
