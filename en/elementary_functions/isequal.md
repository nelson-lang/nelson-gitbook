

# isequal

Return true if all arguments x1, x2, … , xn are equal (same type, same dimensions, same values).

## Syntax

- res = isequal(x1, x2)
- res = isequal(x1, x2, xn)

## Input argument

 - x1 - a value
 - x2 - a value
 - xn - a value

## Output argument

 - res - a logical value

## Description

<b>isequal</b>	returns true if x1 and x2 are the same type, same size and their contents are of equal value; otherwise, it returns false.
<b>isequal</b> compares real and imaginary parts of numeric arrays. NaN (Not a Number) values are considered to be <b>unequal</b> to other elements.


## Examples

```Nelson
A = eye(3, 3);
res = isequal(A, A)
```
```Nelson
A = eye(3, 3);
B = single(A)
res = isequal(A, B)
```
```Nelson
res = isequal('nel', 'son')
```
```Nelson
res = isequalnNaN, NaN)
```

## See also

[isequaln](isequaln.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



