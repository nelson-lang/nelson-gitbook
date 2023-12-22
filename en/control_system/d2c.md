# d2c

Convert model from discrete to continuous time.

## Syntax

- sysc = d2c(sysd)
- sysc = d2c(sysd, method)
- sysc = d2c(sysd, 'prewarp', w0)

## Input argument

- sysd - Discret-time dynamic system: LTI model.
- method - Discretization method: 'zoh', 'tustin', 'prewarp'
- w0 - prewarp frequency.

## Output argument

- sysc - continuous-time model

## Description

  <p>The function <b>sysc = d2c(sysd)</b> transforms a discrete-time dynamic system model <b>sysd</b> into a continuous-time model, employing zero-order hold on the inputs.</p>
  <p>For instance, you can use <b>sysc = d2c(sysd, method)</b> to explicitly define the conversion method.</p>

## Example

```matlab
A = [0.25, 0.5; 0, 0.1];
B = [1; 0];
C = [-1, 0];
sys = ss(A, B, C, 0, 0.2);
sysc = d2c(sys, 'zoh')
```

## See also

[c2d](c2d.md), [ss](ss.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
