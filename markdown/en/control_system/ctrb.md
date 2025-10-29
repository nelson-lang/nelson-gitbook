# ctrb

Controllability of state-space model.

## 📝 Syntax

- Co = ctrb(A, B)
- Co = ctrb(sys)

## 📥 Input argument

- sys - State-space model
- A - State matrix: Nx-by-Nx matrix
- B - Input-to-state matrix: Nx-by-Nu matrix

## 📤 Output argument

- Co - Controllability matrix.

## 📄 Description

Controllability in a dynamic system refers to the system's ability to be guided to any desired state within a finite timeframe through the application of suitable control signals.

This property is commonly known as reachability.

The function <b>ctrb</b> is employed to calculate a controllability matrix, either from state matrices or a state-space model.

The resulting matrix serves as a tool to assess and confirm the controllability of the system.

## 💡 Example

```matlab
A = [1 2; 0 3];
B = [1; 1];
C = eye(2);
D = zeros(2, 1);
sys = ss(A, B, C, D);
Co = ctrb(sys)
```

## 🔗 See also

[ctrbf](../control_system/ctrbf.md), [obsv](../control_system/obsv.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
