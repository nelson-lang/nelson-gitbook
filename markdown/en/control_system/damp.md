# damp

Natural frequency and damping ratio.

## Syntax

- [wn, zeta] = damp(sys)
- [wn, zeta, p, T] = damp(sys)

## Input argument

- sys - LTI model.

## Output argument

- wn - Natural frequency of each pole: vector.
- zeta - Damping ratio of each pole: vector.
- p - Poles of the dynamic system model: vector.
- T - Time Constant (seconds): vector.

## Description

<p>The function <b>damp(sys)</b> provides the natural frequencies (<b>wn</b>) and damping ratios (<b>zeta</b>) associated with the poles of the system represented by <b>sys</b>.</p>

## Example

```matlab
sys = tf([2, 5, 1], [1, 0, 2, -6]);
[wn, zeta, p, T] = damp(sys)

```

## See also

[esort](../control_system/esort.md), [pole](../control_system/pole.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
