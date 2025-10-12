# nmm

Nelson Modules Manager.

## Syntax

- st = nmm('list')
- nmm('load', module_name)
- l = nmm('autoload', module_name)
- nmm('autoload', module_name, state)
- nmm('install', git_url)
- nmm('uninstall', module_name)
- package_filename = nmm('package', module_name, destination_dir)

## Input argument

- module_name - a string: short module's name.
- state - a logical: true will autoload module at startup, false disable autoload for this module.
- git_url - a string: a git url (http/https protocol).
- destination_dir - a string: an existing destination directory where archive will be created.

## Output argument

- st - a struct: list of installed modules.
- l - a logical: current state of autoload.
- package_filename - a string: filename.

## Description

<p>
            nmm is the Nelson Modules Manager.</p>

<p>Source-based distribution packages allows to have optimized packages for your computer and allows to have distributed repositories.</p>

<p>Installed modules are locally built and can require an C/C++.</p>

<p></p>

<p>
                st = nmm('list') get list of installed modules.</p>

<p></p>

<p>
                    nmm('install', git_url) install a distant module.</p>

<p>About git_url, in this example 'https://github.com/nelson-lang/module_skeleton_basic.git#v1.0.0'</p>

<p>'#v1.0.0' is defined as #<commit-ish>, it allows to clone exactly an commit.</p>

<p>The commit-ish can be a tag (exact version), and an sha1 (exac commit) or an branch name.</p>

<p>Without commit-ish, master branch will be used.</p>

<p></p>

<p>
                        nmm('install', filename_nmz) install an prebuilt external module.</p>

<p></p>

<p>
                            nmm('load', module_name) load an installed module for current session.</p>

<p></p>

<p>
                                l = nmm('autoload', module_name returns current state autoload for module_name.</p>

<p></p>

<p>
                                    nmm('autoload', module_name, state) marks an installed modules "marked" as autoload at startup.</p>

<p>By default modules are marked as autoload.</p>

<p></p>

<p>
                                        nmm('uninstall', module_name) uninstall an installed module.</p>

<p></p>

<p>
                                            nmm('package', module_name, destination_dir) packages an module as a zip file.</p>

<p></p>

## Examples

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

## See also

[ismodule](../modules_manager/ismodule.md), [getmodules](../modules_manager/getmodules.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
