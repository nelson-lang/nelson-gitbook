

# betainc

Incomplete beta function

## Syntax

- R = betainc(X, Z, W)
- R = betainc(X, Z, W, tail)

## Input argument

 - X - a real single or real double matrix. It must be in the closed interval [0, 1].
 - Z - a real single or real double matrix. It must be nonnegative.
 - W - a real single or real double matrix. It must be nonnegative.
 - tail - a string 'upper' or 'lower' (default).

## Output argument

 - R - result of betainc function.

## Description


  <p><b>betainc</b> computes the Incomplete beta function.</p>
  <p>All arrays must be the same size or any of them can be scalar.</p>


## Example

```matlab
R = betainc(0.5, 1:10, 3)
```

## See also

[gamma](gamma.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



