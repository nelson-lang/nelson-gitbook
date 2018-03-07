



isint16


isint16

Return true if variable var is a signed 16-bit integer type array.

## Syntax

- res = isint16(var)

## Input argument

 - var - a variable

## Output argument

 - res - a logical: true or false

## Description

<b>isint16</b> returns a logical <b>1</b>if the argument is a <b>signed 16-bit</b> integer array and a logical <b>0</b> otherwise.

## Examples

```Nelson
A = 3;
res = isint16(A)
```
```Nelson
B = int16(3);
res = isint16(B)
```

## See also

isa.md isa, int16.md int16, isinteger.md isinteger.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



