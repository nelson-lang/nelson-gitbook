# module.json

module.json description

## 📄 Description


A module.json file is required for each Nelson external module and is used by the <b>nmm</b> function to manage the module. 

 

<b>module</b>: unique identifier module short name (alphanumeric characters), example: "module\_skeleton\_basic" 

<b>title</b>: complete module name (human friendly name), example: "Module skeleton basic" 

<b>summary</b>: one line description, example: "Skeleton of a basic nelson package" 

<b>version</b>: version number using semantic versioning, example: "1.0.0" 

<b>platforms</b>: platforms supported. 

"all" for all platforms 

others platforms: 

"win32": windows 32 bits 

"win64": windows 64 bits 

"maci64": macos 64 bits build 

"maca64": macos Apple silicon build 

"maci32": macos 32 bits build 

"glnxa64": linux 64 bits build 

"glnxa32": linux 64 bits build 

example: <b>["win64", "glnxa64"]</b>, module will be available only on windows and linux 64 bits platforms. 

The current architecture must match one listed platform exactly, unless <b>all</b> is listed. 

<b>nelson</b>: nelson's supported versions, example: " <2.0.0" (default) 

<b>builtin</b>: true if module requires C/C++ compiler, false if module have only macros. 

<b>author</b>: Author information: name, email and website 

Example: 

{ 

"name": "Allan CORNET", 

"email": "nelson.numerical.computation@gmail.com", 

"url": "https://nelson-lang.github.io/nelson-website/" 

} 

 

<b>homepage</b>: homepage of the module, example "https://github.com/nelson-lang/module\_skeleton\_basic" 

<b>issues</b>: optional issue-tracker URL of the module, example "https://github.com/nelson-lang/module\_skeleton\_basic/issues" 

<b>documentation</b>: optional documentation URL of the module, example "https://nelson-lang.github.io/nelson-website/" 

<b>description</b>: full description of the module, markdown format supported, example: "nelson's module skeleton (macros only)" 

<b>copyright</b> copyright description, example: "Copyright © 2019-present Allan CORNET" 

<b>license</b>: SPDX license expression under which the toolbox will be published, example: "BSD-3-Clause", "MIT" or "LGPL-3.0-or-later OR GPL-3.0-or-later". 

<b>keywords</b>: keywords describing your module. 

Example: 

["interpreter", "scientific-computing", "programming-language", "matrix-functions", "skeleton"] 

 

<b>dependencies</b>: list of modules dependencies {} (default) or name : url values 

{ 

"module\_a": "https://module\_a.git#v1.0.0", 

"module\_b": "https://module\_b.git#v1.0.0" 

} 

During package creation, installed dependency versions are resolved into <b>module-lock.json</b>. The lock file also records its format version, package type (<b>source</b> or <b>binary</b>), source metadata, Nelson version, architecture, ABI tag and checksums for key installed files. A packaged <b>.nmz</b> archive can be installed only when these locked dependencies are already installed. Binary packages also require the locked Nelson architecture and ABI tag to match the running Nelson build. 

When installing a source module, dependency values can be local paths, <b>.nmz</b> archives, HTTP Git repositories, exact versions or semver constraints. Source dependencies are installed recursively before the module is built. If the source tree already contains <b>module-lock.json</b>, its exact dependency versions are used for a reproducible install. Source installs build and run tests in a temporary staging directory before the module is committed to the final install location. A failed source install keeps any previous installed version of the same module intact. 

A <b>.nmz</b> archive can be accompanied by a <b>.sha256</b> checksum file. <b>nmm</b> verifies this checksum when it is present, and otherwise verifies the file checksums embedded in <b>module-lock.json</b> after extraction. 

 

<b>nmm('validate', module\_path)</b> checks that these required fields are present and well formed before installation or packaging. 

<b>nmm('validate', module\_path, '-strict')</b> adds publish-oriented checks for <b>repository</b>, <b>homepage</b>, non-empty <b>keywords</b>, at least one test file and at least one XML help file. 

In strict mode, <b>repository</b> and <b>homepage</b> must be HTTP or HTTPS URLs. The optional <b>issues</b> and <b>documentation</b> fields are validated only when present and must then be HTTP or HTTPS URLs. <b>nmm('validate', module\_path, '-json')</b> returns a machine-readable validation report. 

Validation also checks the package layout: a source module must include <b>builder.m</b> or <b>loader.m</b>, <b>etc/startup.m</b>, <b>etc/finish.m</b>, <b>help</b>, and <b>tests</b>. Packaging requires at least one test file and runs the package tests before writing an archive. 

<b>nmm('pack', module\_path, destination\_dir)</b> uses this descriptor to build a source module and create a reproducible package archive with a lock file and checksum. 

<b>nmm('lock', module\_path)</b> writes or refreshes <b>module-lock.json</b> for a source module without installing or packaging it. 

<b>nmm('publish', package\_filename)</b> reads the package lock file and <b>module.json</b>, then writes a local registry entry containing package metadata, the package source path and SHA-256 checksum. It also writes a <b>registry.json.sha256</b> sidecar. When <b>NELSON\_NMM\_REGISTRY\_SIGNING\_KEY</b> is set, it writes and verifies a keyed <b>registry.json.sig</b> sidecar too. Registry archive installs verify the package checksum and local registry files require the checksum sidecar. 

 

A registry index is a JSON document with a <b>packages</b> array. Each package entry contains package metadata such as name, version, package type, platforms, Nelson compatibility, dependencies, checksum and optional package signature metadata. An installable entry also contains <b>source</b>, <b>url</b> or <b>archive</b>. Dependencies declared by an installable entry are resolved recursively before the package source is installed. <b>nmm('search')</b>, <b>nmm('info')</b> and <b>nmm('versions')</b> read this index. 

Registry versions are also used by <b>nmm('outdated')</b> and <b>nmm('update')</b>. Checked <b>.nmz</b> archives are cached locally and can be reused by offline installs. 

Several versions of the same module can be installed side by side. <b>modules.json</b> stores the active version in the top-level <b>path</b> and <b>version</b> fields, stores all installed versions in <b>versions</b>, and stores an explicit default in <b>pinned\_version</b> when <b>nmm('pin')</b> is used.

## 💡 Example

Deploy module_skeleton and module_skeleton_basic template

```matlab
if ~ismodule('module_skeleton_basic')
    nmm('install', 'https://github.com/nelson-lang/module_skeleton_basic.git#v1.0.0');
end
if ~ismodule('module_skeleton')
    nmm('install', 'https://github.com/nelson-lang/module_skeleton.git#v1.0.0');
end
modules_installed = nmm('list');
edit([modules_installed.module_skeleton.path, 'module.json']);
edit([modules_installed.module_skeleton_basic.path, 'module.json']);

```


## 🔗 See also

[nmm](../modules_manager/nmm.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 2.0.0   | lockfile, registry and strict validation metadata |

<!--
## 👤 Author

Allan CORNET
-->
