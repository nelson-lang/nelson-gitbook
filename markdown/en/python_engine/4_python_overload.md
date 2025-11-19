# Python operators

The representation of Python operators in Nelson.

## 📄 Description

Nelson facilitates the utilization of the subsequent overloaded operators:

| Python Operator Symbol | Python Methods                    | Nelson Methods |
| ---------------------- | --------------------------------- | -------------- |
| - (unary operator)     | \_\_neg\_\_                       | uminus, -a     |
| + (unary operator)     | \_\_pos\_\_                       | uplus, +a      |
| + (binary operator)    | \_\_add\_\_, \_\_radd\_\_         | plus, +        |
| - (binary operator)    | \_\_sub\_\_, \_\_rsub\_\_         | minus, -       |
| \* (binary operator)   | \_\_mul\_\_, \_\_rmul\_\_         | mtimes, \*     |
| / (binary operator)    | \_\_truediv\_\_, \_\_rtruediv\_\_ | mrdivide, /    |
| == (binary operator)   | \_\_eq\_\_                        | eq, ==         |
| > (binary operator)    | \_\_gt\_\_                        | gt, >          |
| < (binary operator)    | \_\_lt\_\_                        | lt, <          |
| != (binary operator)   | \_\_ne\_\_                        | ne, ~=         |
| >= (binary operator)   | \_\_ge\_\_                        | ge, >=         |
| <= (binary operator)   | \_\_le\_\_                        | le, <=         |

<b>isequal</b> builtin is also overloaded to manage python type.

For numpy types, <b>isequal</b> call<b>numpy.array_equal</b> from python.

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
