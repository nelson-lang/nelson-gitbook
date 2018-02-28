



isfinite


isfinite

Check for finite entries.

## Syntax

- tf = isfinite(M)

## Input argument

 - M - a variable

## Output argument

 - tf - logical: result of 'isfinite'.

## Description


  <p><b>isfinite</b> returns a logical array which is true where elements of M are finite values.</p>


## Example

```Nelson
isfinite(pi)
isfinite(Inf)
isfinite(-Inf)
isfinite(int32(3))
X = sparse([1 2 NaN 3 0 Inf 0 4]);
R = isfinite(X)
```

## See also

isnan.md isnan, isinf.md isinf.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET


