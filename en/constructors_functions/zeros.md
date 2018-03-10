

# zeros

Creates an matrix made of zeros.

## Syntax

- R = zeros
- R = zeros(n)
- R = zeros(n, m)
- R = zeros(n, m, ..., z)
- R = zeros(n, m, ..., z, 'like', V)
- R = zeros(n, m, ..., z, classname)

## Input argument

 - n - a variable
 - m - a variable

## Description


  <p><b>zeros</b> returns a matrix made of zeros.</p>


## Examples

```matlab
zeros(3, 2)
```
```matlab
zeros(3, 1, 3, 'single')
```
```matlab
A = single([3 3])
B = zeros(2, 4, 'like', A)
```
```matlab
tic(); single(1) * zeros(1000); toc()
tic();zeros(1000, 'single'); toc()
```

## See also

[eye](eye.md), [ones](ones.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



