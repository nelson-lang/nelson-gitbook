# step

Step response plot of dynamic system.

## Syntax

- [y, t, x] = step(sys)
- [y, t, x] = step(sys, t)
- [y, t, x] = step(sys, tFinal)
- [y, t, x] = step(sys, [t0, tFinal])

## Input argument

- sys - a lti model.
- t - Time vector.
- tFinal - End time for step response: scalar.
- [t0, tFinal] - Time range for step response: two-element vector.

## Output argument

- y - Simulated response data: matrix or vector.
- t - Time vector: vector.
- x - State trajectories: matrix or vector.

## Description

<p>The function defaults to applying a step at t0 = 0 with initial conditions U = 0, dU = 1, and td = 0.</p>
<p>The step function, used as <b>[y, tOut] = step(sys)</b>, calculates the step response (y) of the dynamic system <b>sys</b>.</p>
<p>The time vector tOut is in the time units of <b>sys</b>, and the function automatically determines the time steps and simulation duration based on the system dynamics.</p>
<p>If you use <b>[y, tOut] = step(sys, tFinal)</b>, the step response is computed from t = 0 to the specified end time t = tFinal.</p>
<p>Similarly, <b>[y, tOut] = step(sys, [t0, tFinal])</b> computes the step response from <b>t0</b> to <b>tFinal</b>.</p>

## Example

```matlab
A = [-10 -20 -30;1  0  0; 0  1  0];
B = [1;   0;   0];
C = [0   0   1];
D = 0;
T = [0:0.1:1];
U = zeros(size(T, 1), size(T, 2));
X0 = [0.1 0.1 0.1];
sys = ss(A, B, C, D);
step(sys);

```

<img src="step.svg" align="middle"/>

## See also

[gensig](../control_system/gensig.md), [lsim](../control_system/lsim.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
