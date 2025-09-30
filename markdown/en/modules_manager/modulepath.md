# modulepath

Returns path of a module.

## Syntax

- p = modulepath(module_short_name)
- p = modulepath(module_short_name, option)

## Input argument

- module_short_name or 'nelson' - a string: short module's name. module must exist in nelson session.
- option - a string: 'etc', 'bin', 'root', 'builtin', 'tests'.

## Output argument

- p - a string: path or subpath of the module.

## Description

<p>
            <b>modulepath</b> is an helper's function to return module root path or a subdirectory.</p>
<p>
                <b>modulepath('nelson')</b> is equivalent to <b>modulepath('nelson', 'root')</b>
            </p>
<p>
                <b>modulepath('nelson', 'bin')</b> return path of nelson's executables.</p>
<p>
                    <b>modulepath('nelson', 'builtin')</b> returns path of nelson's dynamic libraries.</p>

## Example

```matlab
modulepath('core')
modulepath('core', 'root')
modulepath('core', 'etc')
modulepath('core', 'bin')
modulepath('core', 'builtin')
modulepath('core', 'tests')
modulepath('nelson', 'root')
modulepath('nelson', 'bin')
modulepath('nelson', 'builtin')

```

## See also

[requiremodule](../modules_manager/requiremodule.md), [getmodules](../modules_manager/getmodules.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
