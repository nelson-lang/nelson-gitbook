# slicot_mc01td

Checking stability of a given real polynomial.

## Syntax

- [DP_OUT, STABLE, NZ, IWARN, INFO] = slicot_mc01td(DICO, DP_IN, P)

## Input argument

- DICO - Indicates whether the stability test to be applied to P(x) is in the continuous-time or discrete-time case as follows: = 'C': Continuous-time case; = 'D': Discrete-time case.
- DP_IN - The degree of the polynomial P(x).
- P - This array must contain the coefficients of P(x) in increasing powers of x.

## Output argument

- DP_OUT - if P(DP+1) = 0.0 on entry, then DP contains the index of the highest power of x for which P(DP+1) != 0.0.
- STABLE - Contains the value int32(1) if P(x) is stable and the value int32(0) otherwise.
- NZ - If INFO = 0, contains the number of unstable zeros - that is, the number of zeros of P(x) in the right half-plane if DICO = 'C' or the number of zeros of P(x) outside the unit circle if DICO = 'D'.
- IWARN - = 0: no warning;
- INFO - = 0: successful exit; = 1: if on entry, P(x) is the zero polynomial;= 2: if the polynomial P(x) is most probably unstable.

## Description

<p>To determine whether or not a given polynomial P(x) with real coefficients is stable, either in the continuous-time or discrete-time case.</p>

<p>A polynomial is said to be stable in the continuous-time case if all its zeros lie in the left half-plane, and stable in the discrete-time case if all its zeros lie inside the unit circle.</p>

## Bibliography

http://slicot.org/objects/software/shared/doc/MC01TD.html

## Used function(s)

MC01TD

## Example

```matlab
DICO = 'C';
DP_IN = 4;
P = [2.0  0.0  1.0  -1.0  1.0];
[DP, STABLE, NZ, IWARN, INFO] = slicot_mc01td(DICO, DP_IN, P)
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

SLICOT Documentation
