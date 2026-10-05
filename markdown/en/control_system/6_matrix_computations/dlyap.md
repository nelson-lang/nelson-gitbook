# dlyap

Discrete-time Lyapunov equations.

## 📝 Syntax

- X = dlyap(A, Q)

## 📥 Input argument

- A - real matrix
- Q - real matrix

## 📤 Output argument

- X - matrix: solution of the discrete-time Lyapunov equation.

## 📄 Description


<b>X = dlyap(A, Q)</b> resolves the Discrete-time Lyapunov equation.

## 💡 Example



```matlab
A = [10, 20; -30, -40];
Q = [30, 10; 10, 10];
X = dlyap (A, Q)
```


## 🔗 See also

[lyap](../../control_system/6_matrix_computations/lyap.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
