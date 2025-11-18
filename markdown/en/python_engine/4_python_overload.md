# Python operators

The representation of Python operators in Nelson.

## 📄 Description

Nelson facilitates the utilization of the subsequent overloaded operators:

| Python Operator Symbol | Python Methods            | Nelson Methods |
| ---------------------- | ------------------------- | -------------- |
| - (unary operator)     | **neg**                   | uminus, -a     |
| + (unary operator)     | **pos**                   | uplus, +a      |
| + (binary operator)    | **add**, **radd**         | plus, +        |
| - (binary operator)    | **sub**, **rsub**         | minus, -       |
| \* (binary operator)   | **mul**, **rmul**         | mtimes, \*     |
| / (binary operator)    | **truediv**, **rtruediv** | mrdivide, /    |
| == (binary operator)   | **eq**                    | eq, ==         |
| > (binary operator)    | **gt**                    | gt, >          |
| < (binary operator)    | **lt**                    | lt, <          |
| != (binary operator)   | **ne**                    | ne, ~=         |
| >= (binary operator)   | **ge**                    | ge, >=         |
| <= (binary operator)   | **le**                    | le, <=         |

<b>isequal</b> builtin is also overloaded to manage python type.

For numpy types, <b>isequal</b> call <b>numpy.array_equal</b> from python.

Others python operators are currently not supported.

## 💡 Example

```matlab
pyrun('import numpy as np')
R = pyrun('R = np.asarray(A)', "R", 'A', magic(3))
R_A = R + R
R_B = R * 2
isequal(R_A, R_B)
```

## 🔗 See also

[pyrun](../python_engine/pyrun.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.5.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
