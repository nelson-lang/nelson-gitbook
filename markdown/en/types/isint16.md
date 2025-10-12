# isint16

Return true if variable var is a signed 16-bit integer type array.

## Syntax

- res = isint16(var)

## Input argument

- var - a variable

## Output argument

- res - a logical: true or false

## Description

        isint16 returns a logical 1if the argument is a signed 16-bit integer array and a logical 0 otherwise.

## Examples

```matlab
A = 3;
res = isint16(A)
```

```matlab
B = int16(3);
res = isint16(B)
```

## See also

[isa](../types/isa.md), [int16](../integer/int16.md), [isinteger](../types/isinteger.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
