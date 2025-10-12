# balreal

Gramian-based balancing of state-space realizations.

## Syntax

- [sysb, g] = balreal(sys)
- [sysb, g, T, Ti] = balreal(sys)

## Input argument

- sys - LTI model.

## Output argument

- sysb - LTI model.
- g - Diagonal vector of the balanced Gramian matrix.
- T - State similarity transform matrix.
- Ti - State similarity transform inverse matrix.

## Description

<p>
            balreal(sys) calculates a balanced realization, denoted as sysb, for the stable segment of the linear time-invariant (LTI) model sys.</p>

<p>This process is applicable to both continuous and discrete systems. If sys is not initially in state-space form, the function automatically converts it to state space using ss before proceeding with the balanced realization.</p>

## Example

```matlab
sys = ss([-1, 0; 0.1, -3], [1, 0]', [0, 1], 0);
[sysb, g, T, Ti] = balreal(sys)

```

## See also

[gram](../control_system/gram.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
