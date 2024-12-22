# varislock

Checks if a variable is locked.

## Syntax

- state = varislock(scope, variable_name)

## Input argument

- scope - a string: 'global', 'base', 'caller', 'local'.
- variable_name - a string: variable name.

## Description

  <p><b>varislock</b> returns true if <b>variable_name</b> has been declared as locked variable and false otherwise.</p>

## Example

```matlab
y = 3;
varislock('local', 'y')
varlock('local', 'y')
varislock('local', 'y')
y = 4
varunlock('local', 'y')
varislock('local', 'y')
y = 4
```

## See also

[varlock](varlock.md), [varunlock](varunlock.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
