# Python operators

The representation of Python operators in Nelson.

## Description

<p>Nelson facilitates the utilization of the subsequent overloaded operators:</p>

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

<p></p>

<p>
            isequal builtin is also overloaded to manage python type.</p>

<p>For numpy types, isequal call numpy.array_equal from python.</p>

<p>Others python operators are currently not supported.</p>

## Example

```matlab
pyrun('import numpy as np')
R = pyrun('R = np.asarray(A)', "R", 'A', magic(3))
R_A = R + R
R_B = R * 2
isequal(R_A, R_B)
```

## See also

[pyrun](../python_engine/pyrun.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.5.0   | initial version |

## Author

Allan CORNET
