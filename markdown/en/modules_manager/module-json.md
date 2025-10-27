# module.json

module.json description

## 📄 Description

A module.json file is required for each nelson's external module, it allows to manager easily with <b>nmm</b> function.

<b>module</b>: unique identifier module short name (alphanumeric characters), example: "module_skeleton_basic"

<b>title</b>: complete module name (human friendly name), example: "Module skeleton basic"

<b>summary</b>: one line description, example: "Skeleton of a basic nelson package"

<b>version</b>: version number using semantic versioning, example: "1.0.0"

<b>platforms</b>: platforms supported.

"all" for all platforms

others platforms:

"win32": windows 32 bits

"win64": windows 64 bits

"maci64": macos 64 bits build

"maci32": macos 32 bits build

"glnxa64": linux 64 bits build

"glnxa32": linux 64 bits build

example: <b>["win64", "glnxa64"]</b>, module will be available only on windows and linux 64 bits platforms.

<b>nelson</b>: nelson's supported versions, example: "<2.0.0" (default)

<b>builtin</b>: true if module requires C/C++ compiler, false if module have only macros.

<b>author</b>: Author information: name, email and website

Example:

{

"name": "Allan CORNET",

"email": "nelson.numerical.computation@gmail.com",

"url": "https://nelson-lang.github.io/nelson-website/"

}

<b>homepage</b>: homepage of the module, example "https://github.com/nelson-lang/module_skeleton_basic"

<b>description</b>: full description of the module, markdown format supported, example: "nelson's module skeleton (macros only)"

<b>copyright</b> copyright description, example: "Copyright © 2019-present Allan CORNET"

<b>license</b>: License under which the toolbox will be published, example: "BSD" or "LGPLv2", ...

<b>keywords</b>: keywords describing your module.

Example:

["interpreter", "scientific-computing", "programming-language", "matrix-functions", "skeleton"]

<b>dependencies</b>: list of modules dependencies {} (default) or name : url values

{

"module_a": "https://module_a.git#v1.0.0",

"module_b": "https://module_b.git#v1.0.0"

}

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

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
