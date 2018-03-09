

# isint8

Return true if variable var is a signed 8-bit integer type array.

## Syntax

- res = isint8(var)

## Input argument

 - var - a variable

## Output argument

 - res - a logical: true or false

## Description

<b>isint8</b> returns a logical <b>1</b>if the argument is a <b>signed 8-bit</b> integer array and a logical <b>0</b> otherwise.

## Examples

```Nelson
A = 3;
res = isint8(A)
```
```Nelson
B = int8(3);
res = isint8(B)
```

## See also

[isa](isa.md), [int8](../integer/int8.md), [isinteger](isinteger.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



