# ctrbf

Compute controllability staircase form.

## 📝 Syntax

- [Abar, Bbar, Cbar, T, k] = ctrbf(A, B, C)
- [Abar, Bbar, Cbar, T, k] = ctrbf(A, B, C, tol)

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

<b>ctrbf(A, B, C)</b> decomposes the given state-space system, defined by matrices <b>A</b>, <b>B</b>, and <b>C</b>, into the controllability staircase form.

This results in transformed matrices <b>Abar</b>, <b>Bbar</b>, and <b>Cbar</b>, along with a similarity transformation matrix <b>T</b> and a vector <b>k</b>.

The length of vector <b>k</b> is equal to the order of the system represented by <b>A</b>, and each entry in <b>k</b> denotes the number of controllable states factored out at each step of the transformation matrix computation.

The non-zero elements in <b>k</b> indicate the number of iterations required for <b>T</b> calculation, and the sum of <b>k</b> corresponds to the number of states in <b>Ac</b>, the controllable portion of <b>Abar</b>.

## 💡 Example

```matlab
A = [-1.5  -0.5; 1     0];
B = [0.5; 0];
C = [0   1];
[Abar, Bbar, Cbar, T, k] = ctrbf(A, B, C)
```

## 🔗 See also

[ctrb](../control_system/ctrb.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
