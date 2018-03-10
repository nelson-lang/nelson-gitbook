

# isfloat

Return true if variable var is a single or double matrix.

## Syntax

- res = isfloat(var)

## Input argument

 - var - a variable

## Output argument

 - res - a logical: true or false

## Description

<b>isfloat</b> returns a logical 1 if the argument is a single or double matrix and a logical 0 otherwise.

## Examples

```matlab
A = 3;
res = isfloat(A)
```
```matlab
A = single(3);
res = isfloat(A)
```

## See also

[isa](isa.md), [single](single.html), [isdouble](isdouble.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



