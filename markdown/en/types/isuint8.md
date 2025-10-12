# isuint8

Return true if variable var is an unsigned 8-bit integer type array.

## Syntax

- res = isuint8(var)

## Input argument

- var - a variable

## Output argument

- res - a logical: true or false

## Description

        isuint8 returns a logical 1if the argument is an unsigned 8-bit integer array and a logical 0 otherwise.

## Examples

```matlab
A = 3;
res = isuint8(A)
```

```matlab
B = uint8(3);
res = isuint8(B)
```

## See also

[isa](../types/isa.md), [uint8](../integer/uint8.md), [isinteger](../types/isinteger.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
