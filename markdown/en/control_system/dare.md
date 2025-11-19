# dare

Discret-time algebraic Riccati equation solution.

## 📝 Syntax

- [X, L, G] = dare(A, B, Q)
- [X, L, G] = dare(A, B, Q, R, S, E)

## 📥 Input argument

- A - Matrix representing the state with dimensions n x n, where n corresponds to the number of states.
- B - Matrix representing control with dimensions n x p, where p is the number of inputs.
- Q - Matrix describing the cost associated with the state, having dimensions n x n, where n is the number of states.
- R - Matrix representing the cost associated with control, with dimensions p x p, where p is the number of inputs.
- S - Matrix that is optionally real-valued with dimensions n x p.
- E - Matrix with dimensions n x n that serves as a descriptor matrix.

## 📤 Output argument

- X - stabilized solution for the discret-time Riccati equation of dimension n x n.
- L - Closed-loop pole vector.
- G - Gain matrix.

## 📄 Description

The function<b>dare(A, B, Q)</b> calculates the exclusive solution, denoted as<b>X</b>, for the discret-time algebraic Riccati equation with matrices<b>A</b>, <b>B</b>, and <b>Q</b>, and also provides additional matrices<b>L</b> and <b>G</b>.

## 💡 Example

```matlab
a = [-3 2;1 1];
b = [0 ; 1];
c = [1 -1];
r = 3;
[x, l, g] = dare(a, b, c'*c, r)

```

## 🔗 See also

[slicot_sb02od](../slicot/slicot_sb02od.md), [slicot_sg02ad](../slicot/slicot_sg02ad.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

SLICOT Documentation
-->
