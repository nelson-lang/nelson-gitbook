

# corrcoef

Correlation coefficients

## Syntax

- R = corrcoef(M)

## Input argument

 - M - a vector or matrix

## Output argument

 - R - Correlation coefficients of M.

## Description


  <p><b>R = corrcoef(M)</b> returns the matrix of correlation coefficients for <b>M</b>, where the columns of <b>M</b> represent random variables and the rows represent observations.</p>


## Example

```matlab
M = [4 -7 3; 1 4 -2; 10 7 9];
R = corrcoef(M)
```

## See also

[cov](cov.html), [mean](mean.html).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



