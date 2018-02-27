



isuint16


isuint16

Return true if variable var is an unsigned 16-bit integer type array.

## Syntax

- res = isuint16(var)

## Input argument

 - var - a variable

## Output argument

 - res - a logical: true or false

## Description

<b>isuint16</b> returns a logical <b>1</b>if the argument is an <b>unsigned 16-bit</b> integer array and a logical <b>0</b> otherwise.

## Examples

```Nelson
A = 3;
res = isuint16(A)
```
```Nelson
B = uint16(3);
res = isuint16(B)
```

## See also

isa.md isa, uint16.md uint16, isinteger.md isinteger.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



