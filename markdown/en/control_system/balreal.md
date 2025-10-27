# balreal

Gramian-based balancing of state-space realizations.

## 📝 Syntax

- [sysb, g] = balreal(sys)
- [sysb, g, T, Ti] = balreal(sys)

## 📥 Input argument

- sys - LTI model.

## 📤 Output argument

- sysb - LTI model.
- g - Diagonal vector of the balanced Gramian matrix.
- T - State similarity transform matrix.
- Ti - State similarity transform inverse matrix.

## 📄 Description

<b>balreal(sys)</b> calculates a balanced realization, denoted as <b>sysb</b>, for the stable segment of the linear time-invariant (LTI) model <b>sys</b>.

This process is applicable to both continuous and discrete systems. If <b>sys</b> is not initially in state-space form, the function automatically converts it to state space using <b>ss</b> before proceeding with the balanced realization.

## 💡 Example

```matlab
sys = ss([-1, 0; 0.1, -3], [1, 0]', [0, 1], 0);
[sysb, g, T, Ti] = balreal(sys)

```

## 🔗 See also

[gram](../control_system/gram.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
