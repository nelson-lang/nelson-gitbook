# tf2ss

Convert transfer function filter parameters to state-space form.

## Syntax

- [A, B, C, D] = tf2ss(b, a)

## Input argument

- b - Transfer function numerator coefficients: vector or matrix.
- a - Transfer function denominator coefficients: vector.

## Output argument

- A (n x n) - Represents the system's state-transition matrix. It describes how the system's internal state evolves over time.
- B (n x m) - Describes the input-to-state mapping. It shows how control inputs affect the change in the system's state.
- C (p x n) - Represents the state-to-output mapping. It shows how the system's state variables are related to the system's outputs.
- D (p x m) - Describes the direct feedthrough from inputs to outputs. In many systems, this matrix is zero because there is no direct feedthrough.

## Description

<p>
            <b>[A, B, C, D] = tf2ss(b, a)</b> transforms a single-input transfer function, either continuous-time or discrete-time, into an equivalent state-space representation.</p>

## Example

```matlab
Fs = 6;
dt = 1/Fs;
b = [1 -(1+cos(dt)) cos(dt)];
a = [1 -3*cos(dt) 1];
[A, B, C, D] = tf2ss(b, a)

```

## See also

[ss2tf](../control_system/ss2tf.md), [ss](../control_system/ss.md), [tf](../control_system/tf.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
