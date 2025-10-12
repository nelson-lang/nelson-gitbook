# varlock

Locks a variable.

## Syntax

- varlock(scope, variable_name)

## Input argument

- scope - a string: 'global', 'base', 'caller', 'local'.
- variable_name - a string: variable name.

## Description

<p>
            varlock locks a variable.</p>

<p>Locked variables cannot be killed.</p>

<p>
                ans variable cannot be locked.</p>

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
varlock('local', 'ans')
varislock('local', 'ans')


```

## See also

[varislock](../memory_manager/varislock.md), [varunlock](../memory_manager/varunlock.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
