# error

Raise an error message.

## Syntax

- error(id, msg)
- error(msg)
- error(error_structure)

## Input argument

- id - a string: error identifier.
- msg - a string.
- error_structure - error message structure.

## Description

<p>
            <b>error</b> stops the current script execution.</p>
<p>
                <b>error('')</b> will be ignored and the script will continue to run.</p>
<p>identifier includes one or more component fields and a mnemonic field (example: 'nelson:matrix:empty')</p>

## Examples

```matlab
error('your error message.')
error('nelson:identifier', 'your error message.')

error('')
```

```matlab
 1 / [1 2 3]
a = lasterror()
lasterror('reset')
b = lasterror()
error(a)
c = lasterror()
```

## See also

[MException](../error_manager/MException.md), [lasterror](../error_manager/lasterror.md), [warning](../error_manager/warning.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
