# tf

Constructs a transfer function model.

## Syntax

- sys = tf()
- sys = tf('s')
- sys = tf(numerator, denominator)
- sys = tf(numerator, denominator, Ts)

## Input argument

- numerator - polynomial coefficients: a row vector or as a cell array of row vectors.
- denominator - polynomial coefficients: a row vector or as a cell array of row vectors.
- Ts - Sampling time Ts, default: in seconds
- sysIn - LTI model.

## Output argument

- sys - Output tranfer function system model.

## Description

<p>
            sys = tf(numerator, denominator) is used to create a continuous-time transfer function model.</p>

<p>It is defined by specifying numerator and denominator of the transfer function.</p>

<p>When you include the Ts parameter, it allows you to create a discrete-time transfer function.</p>

<p>Setting Ts to -1 indicates an unspecified sampling time, and, in this scenario, the input arguments are treated as if they pertain to a continuous-time system.</p>

## Examples

```matlab
numerator = 10;
denominator = [20, 33, 44];
sys = tf(numerator, denominator)
```

```matlab
numerator = 10;
denominator = [20, 33, 44];
Ts = 1.5;
sys = tf(numerator, denominator, Ts)
```

## See also

[ss](../control_system/ss.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
