



isint32


isint32

Return true if variable var is a signed 32-bit integer type array.

## Syntax

- res = isint32(var)

## Input argument

 - var - a variable

## Output argument

 - res - a logical: true or false

## Description

<b>isint32</b> returns a logical <b>1</b>if the argument is a <b>signed 32-bit</b> integer array and a logical <b>0</b> otherwise.

## Examples

```Nelson
A = 3;
res = isint32(A)
```
```Nelson
B = int32(3);
res = isint32(B)
```

## See also

isa.md isa, int32.md int32, isinteger.md isinteger.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



