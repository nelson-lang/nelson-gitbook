# Python operators

The representation of Python operators in Nelson.

## Description

<p>Nelson facilitates the utilization of the subsequent overloaded operators:</p>
Python Operator Symbol Python Methods Nelson Methods - (unary operator) __neg__ uminus, -a + (unary operator) __pos__ uplus, +a + (binary operator) __add__, __radd__ plus, + - (binary operator) __sub__, __rsub__ minus, - * (binary operator) __mul__, __rmul__ mtimes, * / (binary operator) __truediv__, __rtruediv__ mrdivide, / == (binary operator) __eq__ eq, == > (binary operator) __gt__ gt, > < (binary operator) __lt__ lt, < != (binary operator) __ne__ ne, ~= >= (binary operator) __ge__ ge, >= <= (binary operator) __le__ le, <=<p></p>
<p>
            <b>isequal</b> builtin is also overloaded to manage python type.</p>
<p>For numpy types, <b>isequal</b> call <b>numpy.array_equal</b> from python.</p>
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
