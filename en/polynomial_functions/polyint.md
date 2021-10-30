

# polyint

Polynomial integration.

## Syntax

- q = polyint(p, k)
- q = polyint(p)

## Input argument

 - p - vector: polynomial coefficients
 - k - numeric scalr: constant of integration

## Output argument

 - q - row vector: integrated polynomial coefficients

## Description


  <p><b>polyint</b> returns the integral of the polynomial represented by the coefficients in <b>p</b> using a constant of integration <b>k</b> (0 by default).</p>


## Example

```matlab
p = [10, 0, -10, 0, 0, 10];
v = [10, 0, 10];
k = 3;
q = polyint(conv(p,v),k)
```

## See also

[polyval](polyval.md), [polyvalm](polyvalm.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



