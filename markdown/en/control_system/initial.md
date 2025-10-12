# initial

System response to initial states of state-space model.

## Syntax

- [y, t, x] = initial(sys, x0)
- [y, t, x] = initial(sys, x0, Tfinal)
- [y, t, x] = initial(sys, x0, t)
- [y, t, x] = initial(sys, x0, [t0, tFinal])
- initial(...)

## Input argument

- sys - a lti model.
- x0 - Initial state values: vector.
- t - Time samples: vector.
- tFinal - End time for step response: scalar.
- [t0, tFinal] - Time range for step response: two-element vector.

## Output argument

- y - Simulated response data: matrix or vector.
- tOut - Time vector: vector.
- x - State trajectories: matrix or vector.

## Description

<p>
            [y, tOut] = initial(sys, x0) calculates the unforced initial response (y) of the dynamic system sys from the specified initial state x0.</p>

<p>The time vector tOut is provided in the time units of sys, and the initial function automatically adapts time steps and simulation duration based on the system dynamics.</p>

<p>When you use [y, tOut] = initial(sys, x0, tFinal), the function simulates the response from t = 0 to the final time t = tFinal.</p>

<p>Similarly, [y, tOut] = initial(sys, x0, [t0, tFinal]) simulates the response from t0 to tFinal.</p>

<p>Additionally, [y, tOut] = initial(sys, x0, t) returns the initial response of sys at the specified times provided in the vector t.</p>

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
initial(sys, X0);

```

<img src="initial.svg" align="middle"/>

## See also

[step](../control_system/gensig.md), [lsim](../control_system/step.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
