# bernsteinMatrix

Bernstein matrix

## Syntax

- B = bernsteinMatrix(n, t)

## Input argument

- n - nonnegative integer: Approximation order.
- t - number or vector: Evaluation point.

## Output argument

- B - Bernstein Matrix: length(t) - by - n+1 matrix.

## Description

<p>
            B = bernsteinMatrix(n, t) constructs a Bernstein matrix B with dimensions length(t) - by - (n+1), where t is a vector.</p>

<p>The Bernstein matrix is also referred to as the Bezier matrix.</p>

<p>This function can be utilized to calculate the points of a Bezier curve.</p>

## Example

```matlab
t = 0:1/100:1;
B = bernsteinMatrix(3, t);
P = [0 0 0; 1 2 1; 1 -2 3; 5 2 4];
bezierCurve = B * P;
plot3(bezierCurve(:,1), bezierCurve(:,2), bezierCurve(:,3))

```

<img src="bernsteinMatrix.svg" align="middle"/>

## History

| Version | Description     |
| ------- | --------------- |
| 1.5.0   | initial version |

## Author

Allan CORNET
