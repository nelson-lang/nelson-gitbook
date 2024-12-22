# libpointer_setdatatype

Set type of an libpointer handle.

## Syntax

- h.setdatatype(datatype)

## Input argument

- h - a libpointer handle.
- datatype - a string: new datatype.

## Description

  <p>Set data type from libpointer object.</p>

## See also

[libpointer](libpointer.md), [C/Nelson equivalent data types](C_datatype.md).

## Example

```matlab
a = libpointer();
a.isNull()
a.setdatatype('doublePtr');
a.reshape(1, 1)
a.Value
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
