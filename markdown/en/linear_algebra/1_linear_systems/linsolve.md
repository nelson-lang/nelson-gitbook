# linsolve

Solve a linear system of equations.

## 📝 Syntax

- X = linsolve(A, B)
- X = linsolve(A, B, opts)
- [X, r] = linsolve(...)

## 📥 Input argument

- A - a coefficient matrix.
- B - the right-hand side.
- opts - a structure of options; field <b>TRANSA</b> solves <b>A'\*X = B</b>.

## 📤 Output argument

- X - the solution of <b>A\*X = B</b>.
- r - the reciprocal condition number estimate of <b>A</b>.

## 📄 Description


<b>X = linsolve(A, B)</b> solves the linear system <b>A\*X = B</b>. 

<b>X = linsolve(A, B, opts)</b> uses the options in <b>opts</b>; set <b>opts.TRANSA = true</b> to solve <b>A'\*X = B</b>.

## 💡 Example



```matlab
X = linsolve([2 0; 0 4], [6; 8])
```


## 🔗 See also

[inv](../../linear_algebra/1_linear_systems/inv.md), [rref](../../linear_algebra/1_linear_systems/rref.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
