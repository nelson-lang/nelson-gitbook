# varislock

Checks if a variable is locked.

## Syntax

- state = varislock(scope, variable_name)

## Input argument

- scope - a string: 'global', 'base', 'caller', 'local'.
- variable_name - a string: variable name.

## Description

<p>
            varislock returns true if variable_name has been declared as locked variable and false otherwise.</p>

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

[varlock](../memory_manager/varlock.md), [varunlock](../memory_manager/varunlock.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
