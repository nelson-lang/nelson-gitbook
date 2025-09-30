# isdouble

Return true if variable var is a double matrix.

## Syntax

- res = isdouble(var)

## Input argument

- var - a variable

## Output argument

- res - a logical: true or false

## Description

<b>isdouble</b>returns a logical 1 if the argument is a double matrix and a logical 0 otherwise.

## Examples

```matlab
A = 3;
res = isdouble(A)
```

```matlab
A = single(3);
res = isdouble(A)
```

```matlab
A = single([3, i]);
res = isdouble(A)
```

```matlab
A = [3, i];
res = isdouble(A)
```

## See also

[isa](../types/isa.md), [single](../integer/single.md), [double](../integer/double.md), [isfloat](../types/isfloat.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
