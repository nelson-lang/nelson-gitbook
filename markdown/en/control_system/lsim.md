# lsim

Plot simulated time response of dynamic system to arbitrary inputs.

## 📝 Syntax

- lsim(sys, u, t)
- lsim(sys, u, t, x0)
- [y, tOut, x] = lsim(SYS, U, T, X0)

## 📥 Input argument

- sys - a lti model.
- u - Input signal: matrix or vector.
- t - Time samples: vector.
- x0 - Initial state values: vector.

## 📤 Output argument

- y - Simulated response data: matrix or vector.
- tOut - Time vector: vector.
- x - State trajectories: matrix or vector.

## 📄 Description

The function <b>lsim(sys, u, t)</b> generates a plot illustrating the simulated time response of the dynamic system model <b>sys</b> to the input history (<b>t</b>, <b>u</b>).

The time samples for the simulation are specified by the vector <b>t</b>.

In the case of single-input systems, the input signal <b>u</b> is a vector with the same length as <b>t</b>.

For multi-input systems, <b>u</b> is an array with rows corresponding to time samples (length(t)) and columns corresponding to inputs to <b>sys</b>.

An additional usage of the function is demonstrated by the example <b>lsim(sys, u, t, x0)</b>, where a vector <b>x0</b> is provided to specify initial state values.

This is particularly relevant when <b>sys</b> is a state-space model.

## 💡 Examples

```matlab
A = [-10 -20 -30;1  0  0; 0  1  0];
B = [1;   0;   0];
C = [0   0   1];
D = 0;
T = [0:0.1:1];
U = zeros(size(T, 1), size(T, 2));
X0 = [0.1 0.1 0.1];
sys = ss(A, B, C, D);
lsim(sys, U, T, X0);

```

<img src="lsim1.svg" align="middle"/>

```matlab
A = [-1.7  -0.3   1.1;
     -0.2  -1.7   0.6;
      1.0   0.6  -1.4];
B = [ 1.5  0.6;
     -1.8  1.0;
      0    0  ];
C = [ 0    -0.5 -0.1;
      0.35 -0.1 -0.15
      0.65  0    0.6];
D = [ 0.5  0;
      0.05 0.75
      0    0];
sys = ss(A,B,C,D);
Tf = 10;
Ts = 0.1;
[uSq,t] = gensig("square",4,Tf,Ts);
uP = gensig("pulse",3,Tf,Ts);
u = [uSq uP];
lsim(sys,u,t)

```

<img src="lsim2.svg" align="middle"/>

## 🔗 See also

[gensig](../control_system/gensig.md), [step](../control_system/step.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
