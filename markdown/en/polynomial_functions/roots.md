# roots

Find polynomial roots.

## Syntax

- r = roots(p)

## Input argument

- p - vector: polynomial coefficients

## Output argument

- r - roots

## Description

  <p><b>r = roots(c)</b> finds the roots of the polynomial <b>c</b>. <b>r</b> is a column vector.</p>
  <p>This function uses the companion matrix of the polynomial to find the roots.</p>

## Example

```matlab
p = [1 0 0 0 -1];
r = roots(p)
```

## See also

[poly](poly.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
