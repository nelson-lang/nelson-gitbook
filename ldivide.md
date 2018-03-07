



ldivide


ldivide

Left division, .\ operator.

## Syntax

- C = ldivide(A, B)
- C = A .\ B

## Input argument

 - A - a variable
 - B - a variable

## Output argument

 - C - result of A .\ B

## Description


  <p><b>C = ldivide(A, B)</b> returns the element-by-element left division of A and B.</p>


## Examples

```Nelson
B = ones(3, 4)
A = B *2
A .\ B
```
```Nelson
B = 2
A = B *2
A .\ B
```

## See also

rdivide.md rdivide, mldivide.md mldivide.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



