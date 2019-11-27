

# nmm

Nelson Modules Manager.

## Syntax

- st = nmm('list')
- nmm('load', module_name)
- l = nmm('autoload', module_name)
- nmm('autoload', module_name, state)
- nmm('install', git_url)
- nmm('uninstall', module_name)

## Input argument

 - module_name - a string: short module's name.
 - state - a logical: true will autoload module at startup, false disable autoload for this module.
 - git_url - a string: a git url (http/https protocol).

## Output argument

 - st - a struct: list of installed modules.
 - l - a logical: current state of autoload.

## Description


  <p><b>nmm</b> is the Nelson Modules Manager.</p>
  <p>Source-based distribution packages allows to have optimized packages for your computer and allows to have distributed repositories.</p>
  <p>Installed modules are locally built and can require an C/C++.</p>
  <p/>
  <p><b>st = nmm('list')</b> get list of installed modules.</p>
  <p/>
  <p><b>nmm('install', git_url)</b> install a distant module.</p>
  <p>About git_url, in this example 'https://github.com/Nelson-numerical-software/module_skeleton_basic.git#v1.0.0'</p>
  <p>'#v1.0.0' is defined as #&lt;commit-ish&gt;, it allows to clone exactly an commit.</p>
  <p>The commit-ish can be a tag (exact version), and an sha1 (exac commit) or an branch name.</p>
  <p>Without commit-ish, master branch will be used.</p>
  <p/>
  <p><b>nmm('load', module_name)</b> load an installed module for current session.</p>
  <p/>
  <p><b>l = nmm('autoload', module_name</b> returns current state autoload for <b>module_name</b>.</p>
  <p/>
  <p><b>nmm('autoload', module_name, state)</b> marks an installed modules "marked" as autoload at startup.</p>
  <p/>
  <p><b>nmm('uninstall', module_name)</b> uninstall an installed module.</p>
  <p/>


## Example

Deploy module_skeleton_basic template
```matlab
if ~ismodule('module_skeleton_basic')
    nmm('install', 'https://github.com/Nelson-numerical-software/module_skeleton_basic.git#v1.0.0');
    nmm('load', 'module_skeleton_basic')
    macro_sum(3, 4)
    nmm('uninstall', 'module_skeleton_basic')
end
```

## See also

[ismodule](ismodule.md), [getmodules](getmodules.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



