



horzcat


horzcat

Horizontal concatenation.

## Syntax

- R = horzcat(M1, M2, ... , MN)
- R = [M1, M2, ... , MN]

## Input argument

 - M1 - a variable
 - M2 - a variable
 - MN - a variable

## Output argument

 - R - result of [M1, M2, ... , MN]

## Description


  <p><b>R = horzcat(M1, M2, ... , MN)</b> returns the horizontal concatenation of M1, M2, ... , MN along the dimension 2.</p>


## Examples

```Nelson
A = eye(2, 2);
B = ones(2, 2);
C = horzcat(A, B)
D = [A, B]
```
```Nelson
A = 'nel';
B = 'son';
C = horzcat(A, B)
```

## See also

vertcat.md vertcat.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



