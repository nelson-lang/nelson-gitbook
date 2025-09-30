# getLastReport

Returns last recorded formatted error message.

## Syntax

- messageText = getLastReport()

## Output argument

- messageText - a character vector: formatted error message.

## Description

<p>
            <b>getLastReport</b> returns last formatted error message.</p>

## Examples

```matlab
lasterror('reset')
getLastReport()
```

```matlab
state = execstr('xxxxxx', 'errcatch')
l = lasterror()
getLastReport

```

## See also

[lasterror](../error_manager/lasterror.md), [error](../error_manager/error.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
