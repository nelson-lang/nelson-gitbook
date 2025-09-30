# COM_methods

Returns the methods name of an COM object.

## Syntax

- l = COM_methods(h)
- l = methods(h)

## Input argument

- h - a COM object.

## Output argument

- l - a cell of strings.

## Description

<b>methods</b>returns a cell of strings with methods name.

## Example

```matlab
e = actxserver('Excel.Application');
methods(e)
delete(e)
clear e
```

## See also

[COM_set](../com_engine/COM_set.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
