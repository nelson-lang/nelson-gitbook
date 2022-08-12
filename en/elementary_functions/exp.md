# exp

Exponential

## Syntax

- R = exp(M)

## Input argument

- M - a variable

## Output argument

- R - result of exp: exponential.

## Description

  <p><b>exp</b> computes the exponential value.</p>
  <p>If input argument is a complex number, <b>exp</b> computes exp(x) * (cos(y) + i * sin(y)) with z = x + i * y.</p>

## Example

```matlab
x = [1+i,-i;i,2i];
r = exp(x)
```

## See also

[conj](conj.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
