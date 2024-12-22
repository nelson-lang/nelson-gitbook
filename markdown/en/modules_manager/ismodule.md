# ismodule

Checks if a module is loaded.

## Syntax

- state = ismodule(module_short_name)
- state = ismodule(module_short_name, 'isprotected')

## Input argument

- module_short_name - a string: short module's name to test.
- 'isprotected' - check module isprotected (ie. internal module).

## Output argument

- state - a logical.

## Description

  <p><b>ismodule</b> returns <b>true</b> if module is loaded otherwise <b>false</b>.</p>

## Example

```matlab
ismodule('core')
ismodule('mymodule')
```

## See also

[requiremodule](requiremodule.md), [getmodules](getmodules.md).

## History

| Version | Description                    |
| ------- | ------------------------------ |
| 1.0.0   | initial version                |
| 1.11.0  | 'isprotected' second argument. |

## Author

Allan CORNET
