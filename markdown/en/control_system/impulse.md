# impulse

Impulse response plot of dynamic system.

## Syntax

- [y, t, x] = impulse(sys)
- [y, t, x] = impulse(sys, tFinal)
- [y, t, x] = impulse(sys, [t0, tFinal])
- [y, t, x] = impulse(sys, t)
- impulse(...)

## Input argument

- sys - a lti model.
- t - Time samples: vector.
- tFinal - End time for step response: scalar.
- [t0, tFinal] - Time range for step response: two-element vector.

## Output argument

- y - Simulated response data: matrix or vector.
- tOut - Time vector: vector.
- x - State trajectories: matrix or vector.

## Description

## Example

```matlab
sys = tf(4,[1 2 10]);
t = 0:0.05:5;
f = figure();
impulse(sys,t);
```

<img src="impulse.svg" align="middle"/>

## See also

[step](../control_system/gensig.md), [lsim](../control_system/step.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
