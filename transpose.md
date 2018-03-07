



transpose


transpose

Returns vector or matrix transpose: .' operator.

## Syntax

- C= transpose(A)
- C = A .'

## Input argument

 - A - a variable

## Output argument

 - C - result: transpose of A.

## Description


  <p><b>C = transpose(A)</b> returns the transpose of A.</p>


## Examples

```Nelson
A = 3
B = A.'
```
```Nelson
A = -i
B = A.'
```
```Nelson
A = sparse(eye(3, 4) * i)
B = A.'
```

## See also

ctranspose.md ctranspose.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



