# sign

Find the sign function of a number.

## Syntax

- R = sign(M)

## Input argument

- M - a variable

## Output argument

- R - result of sign.

## Description

  <p><b>sign</b> find the sign function of a number.</p>
  <p>-1 if the corresponding element of M is less than 0.</p>
  <p>0 if the corresponding element of M equals 0.</p>
  <p>1 if the corresponding element of M is greater than 0.</p>
  <p>If input argument is a complex number, <b>sign</b> computes <b>M ./ abs(M)</b>.</p>

## Example

```matlab
V = [-1 0 15 NaN Inf];
sign(V)
```

## See also

[conj](conj.md), [abs](abs.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
