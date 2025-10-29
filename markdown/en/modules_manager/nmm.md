# nmm

Nelson Modules Manager.

## 📝 Syntax

- st = nmm('list')
- nmm('load', module_name)
- l = nmm('autoload', module_name)
- nmm('autoload', module_name, state)
- nmm('install', git_url)
- nmm('uninstall', module_name)
- package_filename = nmm('package', module_name, destination_dir)

## 📥 Input argument

- module_name - a string: short module's name.
- state - a logical: true will autoload module at startup, false disable autoload for this module.
- git_url - a string: a git url (http/https protocol).
- destination_dir - a string: an existing destination directory where archive will be created.

## 📤 Output argument

- st - a struct: list of installed modules.
- l - a logical: current state of autoload.
- package_filename - a string: filename.

## 📄 Description

<b>nmm</b> is the Nelson Modules Manager.

Source-based distribution packages allows to have optimized packages for your computer and allows to have distributed repositories.

Installed modules are locally built and can require an C/C++.

<b>st = nmm('list')</b> get list of installed modules.

<b>nmm('install', git_url)</b> install a distant module.

About git_url, in this example 'https://github.com/nelson-lang/module_skeleton_basic.git#v1.0.0'

'#v1.0.0' is defined as #<commit-ish>, it allows to clone exactly an commit.

The commit-ish can be a tag (exact version), and an sha1 (exac commit) or an branch name.

Without commit-ish, master branch will be used.

<b>nmm('install', filename_nmz)</b> install an prebuilt external module.

<b>nmm('load', module_name)</b> load an installed module for current session.

<b>l = nmm('autoload', module_name</b> returns current state autoload for <b>module_name</b>.

<b>nmm('autoload', module_name, state)</b> marks an installed modules "marked" as autoload at startup.

By default modules are marked as autoload.

<b>nmm('uninstall', module_name)</b> uninstall an installed module.

<b>nmm('package', module_name, destination_dir)</b> packages an module as a zip file.

## 💡 Examples

Deploy module_skeleton_basic template

```matlab
if ~ismodule('module_skeleton_basic')
    nmm('install', 'https://github.com/nelson-lang/module_skeleton_basic.git#v1.0.0');
    macro_sum(3, 4)
    nmm('uninstall', 'module_skeleton_basic')
end
```

Package easily a module

```matlab
if ~ismodule('module_skeleton_basic')
    nmm('install', 'https://github.com/nelson-lang/module_skeleton_basic.git#v1.0.0');
end
package_filename = nmm('package', 'module_skeleton_basic', tempdir())

```

## 🔗 See also

[ismodule](../modules_manager/ismodule.md), [getmodules](../modules_manager/getmodules.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
