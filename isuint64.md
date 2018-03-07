



isuint64


isuint64

Return true if variable var is an unsigned 64-bit integer type array.

## Syntax

- res = isuint64(var)

## Input argument

 - var - a variable

## Output argument

 - res - a logical: true or false

## Description

<b>isuint64</b> returns a logical <b>1</b>if the argument is an <b>unsigned 64-bit</b> integer array and a logical <b>0</b> otherwise.

## Examples

```Nelson
A = 3;
res = isuint64(A)
```
```Nelson
B = uint64(3);
res = isuint64(B)
```

## See also

isa.md isa, uint64.md uint64, isinteger.md isinteger.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



