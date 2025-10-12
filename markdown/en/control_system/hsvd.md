# hsvd

Hankel singular values of dynamic system.

## Syntax

- hsv = hsvd(sys)

## Input argument

- sys - State-space model

## Output argument

- hsv - Hankel singular values.

## Description

<p>
            hsv = hsvd(sys) calculates the Hankel singular values (hsv) for the dynamic system sys.</p>

<p>These singular values are computed in state coordinates that balance the energy transfers from input to state and from state to output.</p>

<p>The Hankel singular values serve as a measure of the impact of each state on the input/output characteristics of the system.</p>

<p>Analogous to how singular values relate to matrix rank, small Hankel singular values indicate states that may be omitted to streamline the model and simplify its representation.</p>

## Example

```matlab
A = [ -0.04165  0.0000  4.9200  -4.9200  0.0000  0.0000  0.0000;
-5.2100  -12.500  0.0000   0.0000  0.0000  0.0000  0.0000;
0.0000   3.3300 -3.3300   0.0000  0.0000  0.0000  0.0000;
0.5450   0.0000  0.0000   0.0000 -0.5450  0.0000  0.0000;
0.0000   0.0000  0.0000   4.9200 -0.04165 0.0000  4.9200;
0.0000   0.0000  0.0000   0.0000 -5.2100 -12.500  0.0000;
0.0000   0.0000  0.0000   0.0000  0.0000  3.3300 -3.3300];

B = [  0.0000   0.0000;
12.5000   0.0000;
0.0000   0.0000;
0.0000   0.0000;
0.0000   0.0000;
0.0000   12.500;
0.0000   0.0000];

C = [  1.0000   0.0000  0.0000   0.0000  0.0000  0.0000  0.0000
0.0000   0.0000  0.0000   1.0000  0.0000  0.0000  0.0000
0.0000   0.0000  0.0000   0.0000  1.0000  0.0000  0.0000];

D = [];

sys = ss(A, B, C, D);
hsv = hsvd(sys)
```

## See also

[balreal](../control_system/balreal.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
