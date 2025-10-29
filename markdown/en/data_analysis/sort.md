# sort

Sort array elements by quick sort algorithm.

## 📝 Syntax

- B = sort(A)
- B = sort(A, dim)
- B = sort(..., direction)
- B = sort(..., name, value)
- [B, I] = sort(...)

## 📥 Input argument

- A - an nelson's variable (double, single, int8, int16, int32, int64, uint8, uint16, uint32, uint64, logical, char, string, cell).
- dim - Dimension to operate along: positive integer scalar.
- direction - Sorting direction: 'ascend' (default) or 'descend'.
- name, value - name-value pair arguments.

## 📤 Output argument

- B - sorted array.
- I - sort index.

## 📄 Description

<b>sort</b> implements quick sort algorithm.

name-value pair arguments:

<b>'MissingPlacement'</b> - Placement of missing values: <b>'auto'</b> (default), <b>'first'</b>, <b>'last'</b>.

<b>'ComparisonMethod'</b> - Element comparison method: <b>'auto'</b> (default), <b>'real'</b>, <b>'abs'</b>.

## Used function(s)

qsort (stl)

## 📚 Bibliography

Quick sort algorithm from Bentley and McIlroy's "Engineering a Sort Function". Software - Practice and Experience

## 💡 Examples

ComparisonMethod

```matlab
A = [10+20i 30+i 10i 0 -10i];
B = sort(A,'ComparisonMethod', 'auto')
B = sort(A, 'ComparisonMethod', 'real')
B = sort(A, 'ComparisonMethod', 'abs')

```

MissingPlacement

```matlab
A = [NaN 3 6 0 NaN];
[B, I] = sort(A, 'MissingPlacement', 'auto')
[B, I] = sort(A, 'MissingPlacement', 'first')
[B, I] = sort(A, 'MissingPlacement', 'last')

```

## 🔗 See also

[issorted](../data_analysis/issorted.md), [unique](../data_analysis/unique.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
