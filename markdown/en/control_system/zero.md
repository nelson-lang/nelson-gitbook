# zero

Zeros and gain of SISO dynamic system.

## Syntax

- Z = zero(sys)
- [Z, gain] = zero(sys)

## Input argument

- sys - a LTI model.

## Output argument

- Z - Zeros of the dynamic system.
- gain - Zero-pole-gain of the dynamic system.

## Description

<p>
            [Z, gain] = zero(sys) returns the zero-pole-gain of sys.</p>

## Example

```matlab
sys = tf([4.2,0.25,-0.004],[1,9.6,17]);
[Z, gain] = zero(sys)
```

## See also

[pole](../control_system/pole.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
