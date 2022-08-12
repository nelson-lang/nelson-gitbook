# isint32

Return true if variable var is a signed 32-bit integer type array.

## Syntax

- res = isint32(var)

## Input argument

- var - a variable

## Output argument

- res - a logical: true or false

## Description

<b>isint32</b> returns a logical <b>1</b>if the argument is a <b>signed 32-bit</b> integer array and a logical <b>0</b> otherwise.

## Examples

```matlab
A = 3;
res = isint32(A)
```

```matlab
B = int32(3);
res = isint32(B)
```

## See also

[isa](isa.md), [int32](../integer/int32.md), [isinteger](isinteger.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
