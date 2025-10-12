# nextpow2

Exponent of next higher power of 2

## Syntax

- R = nextpow2(M)

## Input argument

- M - a variable

## Output argument

- R - result of nextpow2: next higher power of 2.

## Description

<p>if M is a vector or a matrix nextpow2(M) applies element-wise.</p>

<p>If M is a scalar, nextpow2(M) returns the first p such that 2^p >= abs(M).</p>

## Example

```matlab
R = nextpow2([10, Inf, 30, -Inf, 90, NaN])
M = uint32([1020 4000 32700]);
R = nextpow2(M)
```

## See also

[pow2](../elementary_functions/pow2.md), [log2](../elementary_functions/log2.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
