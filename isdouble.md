



isdouble


isdouble

Return true if variable var is a double matrix.

## Syntax

- res = isdouble(var)

## Input argument

 - var - a variable

## Output argument

 - res - a logical: true or false

## Description

<b>isdouble</b> returns a logical 1 if the argument is a double matrix and a logical 0 otherwise.

## Examples

```Nelson
A = 3;
res = isdouble(A)
```
```Nelson
A = single(3);
res = isdouble(A)
```
```Nelson
A = single([3, i]);
res = isdouble(A)
```
```Nelson
A = [3, i];
res = isdouble(A)
```

## See also

isa.md isa, single.html single, double.html double, isfloat.md isfloat.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



