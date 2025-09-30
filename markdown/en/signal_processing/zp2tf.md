# zp2tf

Zero-pole to transfer function conversion.

## Syntax

- [NUM, DEN] = zp2tf(Z, P, K)

## Input argument

- Z - Locations of zeros, organized in columns for each system output.
- P - Locations of poles, recorded as a column vector.
- K - Gains.

## Output argument

- NUM - Coefficients in the numerator, organized by rows corresponding to each system output.
- DEN - Coefficients in the denominator, arranged as a row vector.

## Description

<p>
            <b>[NUM, DEN] = zp2tf(Z, P, K)</b> returns polynomial transfer function representation from zeros and poles.</p>

## Bibliography

zpk2tf scipy implementation (MIT)

## Example

```matlab
p = [0.5;0.45+0.5i;0.45-0.5i];
z = [-1;i;-i];
k = 1;
[n, d] = zp2tf(z, p, k)
```

## See also

[tf2zpk](../signal_processing/tf2zpk.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
