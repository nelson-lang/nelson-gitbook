

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

```Nelson
zeros(3, 2)
```
```Nelson
zeros(3, 1, 3, 'single')
```
```Nelson
A = single([3 3])
B = zeros(2, 4, 'like', A)
```
```Nelson
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



