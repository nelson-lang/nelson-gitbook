

# ones

Creates an matrix made of ones.

## Syntax

- R = ones
- R = ones(n)
- R = ones(n, m)
- R = ones(n, m, ..., z)
- R = ones(n, m, ..., z, 'like', V)
- R = ones(n, m, ..., z, classname)

## Input argument

 - n - a variable: n-by-n matrix
 - m - a variable: n-by-m matrix

## Description


  <p><b>ones</b> returns a matrix made of ones.</p>


## Examples

```matlab
ones(3,2)
```
```matlab
ones(3,1,3,'single')
```
```matlab
A = single([3 3])
B = ones(2,4,'like', A)
```
```matlab
tic(); single(1) * ones(1000); toc()
tic();ones(1000,'single'); toc()
```

## See also

[eye](eye.md), [zeros](zeros.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



