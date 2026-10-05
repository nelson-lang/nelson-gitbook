# islocalmax

Detect local maxima in data.

## 📝 Syntax

- TF = islocalmax(A)
- TF = islocalmax(A, dim)
- TF = islocalmax(..., Name, Value)
- [TF, P] = islocalmax(...)

## 📥 Input argument

- A - input data: real numeric or logical vector, matrix, N-D array, table or timetable.
- dim - dimension to operate along: positive integer scalar (default: first non-singleton dimension). Not supported for tables.
- 'MinProminence' - nonnegative scalar (default: 0): only the maxima whose prominence is at least this value are returned.
- 'FlatSelection' - element marked in a flat maximum region: 'center' (default), 'first', 'last' or 'all'.
- 'MinSeparation' - nonnegative scalar (default: 0), in sample point units (a duration for datetime or duration sample points): a maximum closer than this value to a more prominent one is ignored.
- 'MaxNumExtrema' - positive integer: keep at most this number of the most prominent maxima (default: no limit).
- 'ProminenceWindow' - positive scalar k or two-element vector [b f] of nonnegative values (a duration for datetime or duration sample points): the prominence of a maximum is computed with the data of the window [x-k/2, x+k/2) or [x-b, x+f] only.
- 'SamplePoints' - sorted vector of unique double, single, datetime or duration values: locations of the data (default: 1, 2, 3, ...). For a table, it can also be a table variable name. A timetable uses its row times.
- 'DataVariables' - table variables to operate on: names, indices, logical vector, function handle or vartype (default: all variables).
- 'OutputFormat' - 'logical' (default): TF is a logical array; 'tabular': TF is a table with the DataVariables. Only for tables.

## 📤 Output argument

- TF - logical array of the size of A (or table), true at the local maxima.
- P - prominence of each local maximum (0 elsewhere), same size as A; unsigned integer class for integer data. For a table, P is a table with the DataVariables.

## 📄 Description


<b>islocalmax</b> marks the elements of A that are greater than their neighbors along the operating dimension. A run of equal values greater than the values around it is one local maximum (see 'FlatSelection'). 

The first and last elements are never local maxima. NaN values are ignored. +Inf values are always local maxima, with an infinite prominence. 

The prominence of a maximum measures how much it stands out: from the maximum, a horizontal line is drawn on each side up to the first strictly higher value or the end of the data; the basis is the higher of the two lowest values found under these lines, and the prominence is the height of the maximum above the basis. Every element of a flat maximum region carries its prominence. 

The filters are applied in this order: 'MinProminence', 'MinSeparation' (a flat region counts as one maximum spanning its samples) and 'MaxNumExtrema' (on ties, the first maximum wins). 

Without 'ProminenceWindow', the search runs in linear time: it is suitable for large signals.

## 💡 Examples

Local maxima and their prominence

```matlab
A = [0 5 1 3 1 4 0];
[TF, P] = islocalmax(A)
islocalmax(A, 'MinProminence', 3)
```
Flat maxima regions

```matlab
x = 0:0.1:5;
A = min(0.75, sin(pi * x));
find(islocalmax(A, 'FlatSelection', 'first'))
find(islocalmax(A, 'FlatSelection', 'all'))
```
Separated maxima with time sample points

```matlab
t = hours(linspace(0, 3, 15));
A = [2 4 6 4 3 7 5 6 5 10 4 -1 -3 -2 0];
TF = islocalmax(A, 'MinSeparation', minutes(45), 'SamplePoints', t);
find(TF)
```
Maxima along the rows of a matrix

```matlab
A = [1 3 1 2 0; 0 1 4 1 0; 2 0 2 0 2];
TF = islocalmax(A, 2)
```


## 🔗 See also

[islocalmin](../data_analysis/islocalmin.md), [max](../data_analysis/max.md), [movmax](../data_analysis/movmax.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
