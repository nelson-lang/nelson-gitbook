# isuint16

Return true if variable var is an unsigned 16-bit integer type array.

## Syntax

- res = isuint16(var)

## Input argument

- var - a variable

## Output argument

- res - a logical: true or false

## Description

        isuint16 returns a logical 1if the argument is an unsigned 16-bit integer array and a logical 0 otherwise.

## Examples

```matlab
A = 3;
res = isuint16(A)
```

```matlab
B = uint16(3);
res = isuint16(B)
```

## See also

[isa](../types/isa.md), [uint16](../integer/uint16.md), [isinteger](../types/isinteger.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
