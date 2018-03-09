

# eye

Creates an identity matrix.

## Syntax

- R = eye
- R = eye(n)
- R = eye(n, m)
- R = eye(n, m, ..., z)
- R = eye(n, m, ..., z, 'like', V)
- R = eye(n, m, ..., z, classname)

## Input argument

 - n - a variable: n-by-n matrix
 - m - a variable: n-by-m matrix

## Description


  <p><b>eye</b> returns an identity matrix.</p>


## Examples

```Nelson
eye(3)
```
```Nelson
eye(3,1,3,'single')
```
```Nelson
A = single([3 3])
B = eye(2,4,'like', A)
```
```Nelson
A = eye(0, 4)
```

## See also

[ones](ones.md), [zeros](zeros.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



