# kalman

Design Kalman filter for state estimation.

## Syntax

- [kalmf, L, P, M, Z] = kalman(sys, Q, R, N)
- [kalmf, L, P, M, Z] = kalman(sys, Q, R, N, sensors, known)

## Input argument

- sys - Plant model with process noise: state-space model.
- Q - Process noise covariance: scalar or matrix.
- R - Measurement noise covariance: scalar or matrix.
- N - Noise cross covariance: scalar or matrix.
- sensors - Measured outputs of sys: vector.
- known - Known inputs of sys: vector.

## Output argument

- kalmf - Kalman estimator: state-space model
- L - Filter gains: matrix
- P - Steady-state error covariances: matrix
- M - Innovation gains of state estimators: matrix
- Z - Steady-state error covariances: matrix

## Description

<p>
            [kalmf, L, P] = kalman(sys, Q, R, N) generates a Kalman filter using the provided plant model sys and noise covariance matrices Q, R, and N.</p>

<p>The function calculates a Kalman filter suitable for application in a Kalman estimator, as depicted in the following diagram.</p>

## Example

```matlab
A = [11.269   -0.4940    1.129; 1.0000         0         0;0    1.0000         0];
B = [-0.3832;  0.5919;  0.5191];
C = [1 0 0];
sys = ss(A,[B, B], C, 0);
Q = 1;
R = 1;
[kEst, l, p, m, z] = kalman(sys, Q, R, [])
```

## See also

[care](../control_system/care.md), [dare](../control_system/dare.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
