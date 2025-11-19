# bandwidth

Lower and upper matrix bandwidth.

## 📝 Syntax

- [lower, upper] = bandwidth(A)
- R = bandwidth(A, type)

## 📥 Input argument

- A - Input matrix
- type - 'upper' or 'lower'

## 📤 Output argument

- lower, upper - lower bandwidth: lower, and upper bandwidth: upper of matrix A.
- R - lower or upper bandwidth.

## 📄 Description

<b>[lower, upper] = bandwidth(A)</b> returns <b>lower</b> and<b>upper</b> bandwidths of matrix <b>A</b>.

## 💡 Example

```matlab
M = [10 -20 40; -50 20 0; 10 0 30]
[lower, upper] = bandwidth(M)

```

## 🔗 See also

[isbanded](../linear_algebra/isbanded.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
