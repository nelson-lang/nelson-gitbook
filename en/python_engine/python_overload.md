# Python operators

The representation of Python operators in Nelson.

## Description

  <p>Nelson facilitates the utilization of the subsequent overloaded operators:</p>
  <table>
    <tr>
      <th>Python Operator Symbol</th>
      <th>Python Methods</th>
      <th>Nelson Methods</th>
    </tr>
    <tr>
      <td>- (unary operator)</td>
      <td>__neg__</td>
      <td>uminus, -a</td>
    </tr>
    <tr>
      <td>+ (unary operator)</td>
      <td>__pos__</td>
      <td>uplus, +a</td>
    </tr>
    <tr>
      <td>+ (binary operator)</td>
      <td>__add__, __radd__</td>
      <td>plus, +</td>
    </tr>
    <tr>
      <td>- (binary operator)</td>
      <td>__sub__, __rsub__</td>
      <td>minus, -</td>
    </tr>
    <tr>
      <td>* (binary operator)</td>
      <td>__mul__, __rmul__</td>
      <td>mtimes, *</td>
    </tr>
    <tr>
      <td>/ (binary operator)</td>
      <td>__truediv__, __rtruediv__</td>
      <td>mrdivide, /</td>
    </tr>
    <tr>
      <td>== (binary operator)</td>
      <td>__eq__</td>
      <td>eq, ==</td>
    </tr>
    <tr>
      <td>&gt; (binary operator)</td>
      <td>__gt__</td>
      <td>gt, &gt;</td>
    </tr>
    <tr>
      <td>&lt; (binary operator)</td>
      <td>__lt__</td>
      <td>lt, &lt;</td>
    </tr>
    <tr>
      <td>!= (binary operator)</td>
      <td>__ne__</td>
      <td>ne, ~=</td>
    </tr>
    <tr>
      <td>&gt;= (binary operator)</td>
      <td>__ge__</td>
      <td>ge, &gt;=</td>
    </tr>
    <tr>
      <td>&lt;= (binary operator)</td>
      <td>__le__</td>
      <td>le, &lt;=</td>
    </tr>
  </table>
  <p/>
  <p><b>isequal</b> builtin is also overloaded to manage python type.</p>
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

[pyrun](pyrun.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.5.0   | initial version |

## Author

Allan CORNET
