# lsqnonneg

Nonnegative linear least-squares solution.

## 📝 Syntax

- x = lsqnonneg(C, d)
- [x, resnorm, residual, exitflag, output, lambda] = lsqnonneg(C, d, options)

## 📥 Input argument

- C - coefficient matrix.
- d - right-hand side vector.
- options - solver options.

## 📤 Output argument

- x - nonnegative least-squares solution.
- resnorm - squared residual norm.
- residual - d - C\*x.
- lambda - KKT multipliers for nonnegativity constraints.

## 📄 Description

<b>lsqnonneg</b> solves min norm(C\*x-d)^2 subject to x >= 0 using an active-set method.

## Used function(s)

    optimset

## 📚 Bibliography

C. L. Lawson and R. J. Hanson, Solving Least Squares Problems, SIAM, 1995.

## 💡 Example

```matlab
C = [1 0; 0 1; 1 1];
d = [1; 2; 3];
[x, resnorm] = lsqnonneg(C, d)

```

## 🔗 See also

[lsqnonlin](../optimization/lsqnonlin.md), [quadprog](../optimization/quadprog.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
