# isint32

Return true if variable var is a signed 32-bit integer type array.

## Syntax

- res = isint32(var)

## Input argument

- var - a variable

## Output argument

- res - a logical: true or false

## Description

        isint32 returns a logical 1if the argument is a signed 32-bit integer array and a logical 0 otherwise.

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

[isa](../types/isa.md), [int32](../integer/int32.md), [isinteger](../types/isinteger.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
