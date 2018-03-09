

# isinteger

Return true if variable var is a integer type array.

## Syntax

- res = isinteger(var)

## Input argument

 - var - a variable

## Output argument

 - res - a logical: true or false

## Description

<b>isinteger</b> returns a logical 1 if the argument is a integer type (int8, int16 ...) array and a logical 0 otherwise.

## Examples

```Nelson
A = 3;
res = isinteger(A)
```
```Nelson
B = uint8(3);
res = isinteger(B)
```
```Nelson
A = single([3, i]);
res = isinteger(A)
```

## See also

[isa](isa.md), [isint8](isint8.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



