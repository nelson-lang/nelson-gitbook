# allfinite

Check if all array elements are finite.

## Syntax

- tf = allfinite(M)

## Input argument

- M - a variable

## Output argument

- tf - logical: result of 'allfinite'.

## Description

  <p><b>allfinite</b> returns a logical scalar which is true where elements of M are all finite values.</p>

## Example

```matlab
X = sparse([1 2 NaN 3 0 Inf 0 4]);
R = allfinite(X)
R2 = isfinite(X)
```

## See also

[isfinite](isfinite.md), [isnan](isnan.md), [all](all.html).

## History

| Version | Description     |
| ------- | --------------- |
| 1.6.0   | initial version |

## Author

Allan CORNET
