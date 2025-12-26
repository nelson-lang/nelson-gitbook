# obsvf

Compute observability staircase form.

## 📝 Syntax

- [Abar, Bbar, Cbar, T, k] = obsvf(A, B, C)
- [Abar, Bbar, Cbar, T, k] = obsvf(A, B, C, tol)

## 📥 Input argument

- A - State matrix: Nx-by-Nx matrix
- B - Input-to-state matrix: Nx-by-Nu matrix
- C - Output-to-state matrix: Ny-by-Nx matrix
- tol - scalar real (tolerance).

## 📤 Output argument

- Abar - Observability staircase state matrix.
- Bbar - Observability staircase input matrix.
- Cbar - Observability staircase output matrix.
- T - Similarity transform matrix.
- k - Vector: number of observable states.

## 📄 Description

<b>obsvf(A, B, C)</b> decomposes the given state-space system, characterized by matrices <b>A</b>, <b>B</b>, and <b>C</b>, into the observability staircase form, resulting in transformed matrices <b>Abar</b>, <b>Bbar</b>, and <b>Cbar</b>.

It also provides a similarity transformation matrix <b>T</b> and a vector <b>k</b>.

The length of vector <b>k</b> corresponds to the number of states in <b>A</b>, and each entry in <b>k</b> signifies the number of observable states factored out at each step of the transformation matrix computation.

The non-zero elements in <b>k</b> indicate the number of iterations needed for <b>T</b> calculation, and the sum of <b>k</b> represents the number of states in Ao, the observable portion of <b>Abar</b>.

## 💡 Example

```matlab
A = [-1.5  -0.5; 1     0];
B = [0.5; 0];
C = [0   1];
[Abar, Bbar, Cbar, T, k] = obsvf(A, B, C)
```

## 🔗 See also

[obsv](../control_system/obsv.md), [ctrbf](../control_system/ctrbf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
