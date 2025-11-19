# c2d

Convert model from continuous to discrete time.

## 📝 Syntax

- [P, G] = c2d(A, B, Ts)
- sysd = c2d(sysc, Ts)
- sysd = c2d(sysc, Ts, method)
- sysd = c2d(sysc, Ts, 'prewarp', w0)

## 📥 Input argument

- A - State matrix: Nx-by-Nx matrix.
- B - Input-to-state matrix: Nx-by-Nu matrix.
- Ts - Sample time: positive scalar.
- sysc - Continuous-time dynamic system: LTI model.
- method - Discretization method: 'zoh', 'tustin', 'prewarp'
- w0 - prewarp frequency.

## 📤 Output argument

- P - phi
- G - gamma
- sysd - Discrete-time model

## 📄 Description

The function<b>sysd = c2d(sysc, Ts)</b> discretizes the continuous-time dynamic system model<b>sysc</b> using a zero-order hold on the inputs with a sample time of<b>Ts</b>.

For instance, you can use<b>sysd = c2d(sysc, Ts, method)</b> to explicitly specify the discretization method.

## 💡 Example

```matlab
A = [1  0.5; 0.5  1 ];
B = [0 -1; 1  0 ];
C = [ -1  0; 0  1 ];
D = [  1  0; 0 -1 ];
sys = ss(A, B, C, D);
Ts = 2;
sysd = c2d(sys, Ts, 'zoh')

```

## 🔗 See also

[d2c](../control_system/d2c.md), [ss](../control_system/ss.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
