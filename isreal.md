



isreal


isreal

Return true if all imaginary part is a zero array.

## Syntax

- res = isreal(var)

## Input argument

 - var - a variable

## Output argument

 - res - a logical: true or false

## Description

<b>isreal</b> returns a logical true if var is a non-complex matrix or scalar and a logical false otherwise.

## Examples

```Nelson
A = 1 + 0i;
res = isreal(A)
```
```Nelson
B = uint8(3);
res = isreal(B)
```
```Nelson
A = single([3, i]);
res = isreal(A)
```

## See also

isa.md isa, isint8.md isint8.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



