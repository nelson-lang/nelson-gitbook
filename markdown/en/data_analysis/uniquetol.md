# uniquetol

Unique values within a tolerance.

## 📝 Syntax

- C = uniquetol(A)
- C = uniquetol(A, tol)
- C = uniquetol(\_\_\_, name, value)
- [C, ia, ic] = uniquetol(\_\_\_)

## 📥 Input argument

- A - real full array of type single or double.
- tol - nonnegative scalar tolerance. The default is 1e-12 for double and 1e-6 for single inputs. Two values u and v are within tolerance if abs(u-v) <= tol\*DataScale.
- name, value - one or more name-value pairs: 'ByRows' (logical, treat each row of A as a single element), 'OutputAllIndices' (logical, return ia as a cell array holding every index of each group), 'DataScale' (scalar or per-column vector used instead of the automatic scaling).

## 📤 Output argument

- C - unique values of A within tolerance, sorted in ascending order.
- ia - index vector such that C = A(ia). When 'OutputAllIndices' is true, ia is a cell array where ia{k} lists every index of A belonging to the k-th group.
- ic - index vector such that A is within tolerance of C(ic).

## 📄 Description

<b>uniquetol</b> returns the unique values of <b>A</b> using tolerance <b>tol</b>. Two elements are considered equal when their absolute difference is less than or equal to <b>tol</b> scaled by the data. By default the scaling is the largest absolute value of <b>A</b>, or the largest absolute value of each column when <b>'ByRows'</b> is true.

The output <b>C</b> is sorted in ascending order and, for each group of nearby values, keeps the smallest one.

## 💡 Example

```matlab
[C, ia, ic] = uniquetol([2 1 2 1.0000001], 1e-6)
```

## 🔗 See also

[ismembertol](../data_analysis/ismembertol.md), [unique](../data_analysis/unique.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
