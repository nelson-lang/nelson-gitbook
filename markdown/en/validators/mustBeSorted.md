# mustBeSorted

Checks that array elements are sorted or raise an error.

## 📝 Syntax

- mustBeSorted(A)
- mustBeSorted(A, dim)
- mustBeSorted(A, direction)
- mustBeSorted(A, dim, direction)
- mustBeSorted(..., 'MissingPlacement', placement)
- mustBeSorted(..., 'ComparisonMethod', method)

## 📥 Input argument

- A - a variable: numeric, logical, char, string, cell array of character vectors, or an object implementing issorted. Complex values are supported.
- dim - a positive integer scalar: dimension to operate along. Default: first dimension whose size is not 1.
- direction - 'ascend' (default), 'descend', 'monotonic' (ascending or descending), 'strictascend', 'strictdescend' or 'strictmonotonic'. Strict directions reject repeated and missing values.
- placement - 'auto' (default), 'first' or 'last': where missing values (NaN, missing string) must be. 'auto' places them last for ascending order and first for descending order.
- method - 'auto' (default), 'real' or 'abs': comparison of numeric values. 'real' compares real parts then imaginary parts, 'abs' compares magnitudes then phase angles. 'auto' uses 'real' for real input and 'abs' for complex input.

## 📄 Description

<b>mustBeSorted(A)</b> raises an error if the elements of <b>A</b> are not sorted. It does not return a value.

Vectors are checked as a whole, matrices column by column, and multidimensional arrays along the first dimension whose size is not 1.

Empty values and scalars are always sorted.

Real numeric, logical and char arrays are checked natively in a single pass; other types use the comparison operators of their class.

<b>mustBeSorted</b> is designed to be used for property and function argument validation.

## 💡 Examples

Direction of the order

```matlab
A = [5 3 3 1];
mustBeSorted(A, 'descend')
mustBeSorted(A)
```

Missing values and complex values

```matlab
mustBeSorted([1 2 NaN])
mustBeSorted([NaN 1 2], 'MissingPlacement', 'first')
mustBeSorted([1 -2 3], 'ComparisonMethod', 'abs')
mustBeSorted([1+1i, 1-1i])
```

## 🔗 See also

[issorted](../data_analysis/issorted.md), [sort](../data_analysis/sort.md), [mustBeVector](../validators/mustBeVector.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
