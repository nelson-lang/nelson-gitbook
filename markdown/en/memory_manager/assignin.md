# assignin

Assignin value to a variable in a specified variables scope.

## Syntax

- assignin(scope, variable_name, variable_value)

## Input argument

- scope - a string: 'global', 'base', 'caller', 'local'.
- variable_name - a string: the name of variable destination.
- variable_value - a variable to assign.

## Description

  <p><b>assignin</b> assign value to a variable in a specified variables scope.</p>

## Example

```matlab
assignin('base', 'X', 33);
Y = acquirevar('base', 'X');
```

## See also

[assignin](assignin.md), [who](who.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
