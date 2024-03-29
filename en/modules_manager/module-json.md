# module.json

module.json description

## Description

  <p>A module.json file is required for each nelson's external module, it allows to manager easily with <b>nmm</b> function.</p>
  <p/>
  <p><b>module</b>: unique identifier module short name (alphanumeric characters), example: "module_skeleton_basic"</p>
  <p><b>title</b>: complete module name (human friendly name), example: "Module skeleton basic" </p>
  <p><b>summary</b>: one line description, example: "Skeleton of a basic nelson package" </p>
  <p><b>version</b>: version number using semantic versioning, example: "1.0.0" </p>
  <p><b>platforms</b>:  platforms supported.</p>
  <p>"all" for all platforms</p>
  <p>others platforms:</p>
  <p>"win32": windows 32 bits</p>
  <p>"win64": windows 64 bits</p>
  <p>"maci64": macos 64 bits build</p>
  <p>"maci32": macos 32 bits build</p>
  <p>"glnxa64": linux 64 bits build</p>
  <p>"glnxa32": linux 64 bits build</p>
  <p>example: <b>["win64", "glnxa64"]</b>, module will be available only on windows and linux 64 bits platforms.</p>
  <p><b>nelson</b>: nelson's supported versions, example: "&lt;2.0.0" (default)</p>
  <p><b>builtin</b>: true if module requires C/C++ compiler, false if module have only macros.</p>
  <p><b>author</b>: Author information: name, email and website</p>
  <p>Example:</p>
  <p>{</p>
  <p>"name": "Allan CORNET",</p>
  <p>"email": "nelson.numerical.computation@gmail.com",</p>
  <p>"url": "https://nelson-lang.github.io/nelson-website/"</p>
  <p>}</p>
  <p/>
  <p><b>homepage</b>: homepage of the module, example "https://github.com/nelson-lang/module_skeleton_basic" </p>
  <p><b>description</b>: full description of the module, markdown format supported, example: "nelson's module skeleton (macros only)" </p>
  <p><b>copyright</b>copyright description, example: "Copyright © 2019-present Allan CORNET" </p>
  <p><b>license</b>: License under which the toolbox will be published, example: "BSD" or "LGPLv2", ... </p>
  <p><b>keywords</b>: keywords describing your module.</p>
  <p>Example:</p>
  <p>["interpreter", "scientific-computing", "programming-language", "matrix-functions", "skeleton"]</p>
  <p/>
  <p><b>dependencies</b>: list of modules dependencies {} (default) or name : url values</p>
  <p>{</p>
  <p>"module_a": "https://module_a.git#v1.0.0",</p>
  <p>"module_b": "https://module_b.git#v1.0.0"</p>
  <p>}</p>

## Example

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

## See also

[nmm](nmm.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
