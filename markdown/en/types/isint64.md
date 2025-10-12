# isint64

Return true if variable var is a signed 64-bit integer type array.

## Syntax

- res = isint64(var)

## Input argument

- var - a variable

## Output argument

- res - a logical: true or false

## Description

        isint64 returns a logical 1if the argument is a signed 64-bit integer array and a logical 0 otherwise.

## Examples

```matlab
A = 3;
res = isint64(A)
```

```matlab
B = int64(3);
res = isint64(B)
```

## See also

[isa](../types/isa.md), [int64](../integer/int64.md), [isinteger](../types/isinteger.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
