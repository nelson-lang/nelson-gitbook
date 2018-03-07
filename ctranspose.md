



ctranspose


ctranspose

Returns complex conjugate transpose: ' operator.

## Syntax

- C= ctranspose(A)
- C = A'

## Input argument

 - A - a variable

## Output argument

 - C - result: complex conjugate transpose of A.

## Description


  <p><b>C = ctranspose(A)</b> returns the complex conjugate transpose of A.</p>


## Examples

```Nelson
A = 3
B = A'
```
```Nelson
A = -i
B = A'
```
```Nelson
A = sparse(eye(3, 4) * i)
B = A'
```

## See also

transpose.md transpose.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



