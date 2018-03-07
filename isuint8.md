



isuint8


isuint8

Return true if variable var is an unsigned 8-bit integer type array.

## Syntax

- res = isuint8(var)

## Input argument

 - var - a variable

## Output argument

 - res - a logical: true or false

## Description

<b>isuint8</b> returns a logical <b>1</b>if the argument is an <b>unsigned 8-bit</b> integer array and a logical <b>0</b> otherwise.

## Examples

```Nelson
A = 3;
res = isuint8(A)
```
```Nelson
B = uint8(3);
res = isuint8(B)
```

## See also

isa.md isa, uint8.md uint8, isinteger.md isinteger.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



