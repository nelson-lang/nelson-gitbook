# requiremodule

Returns an error if module is not loaded in Nelson.

## Syntax

- requiremodule(module_short_name)

## Input argument

- module_short_name - a string: short module's name.

## Description

<p>
            <b>requiremodule</b> returns an error if desired module is not loaded.</p>
<p>This function is usefull to verify a dependency on another module.</p>

## Example

See module skeleton for example

```matlab
ismodule('module_skeleton')
requiremodule('module_skeleton')
addmodule([nelsonroot(), '/module_skeleton'], 'module_skeleton')
ismodule('module_skeleton')
requiremodule('module_skeleton')
```

## See also

[ismodule](../modules_manager/ismodule.md), [addmodule](../modules_manager/removemodule.md), [getmodules](../modules_manager/getmodules.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
