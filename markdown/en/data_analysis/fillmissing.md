# fillmissing

Fill missing values.

## 📝 Syntax

- B = fillmissing(A, method)
- B = fillmissing(A, 'constant', value)
- B = fillmissing(A, movmethod, window)
- B = fillmissing(A, fillfun, gapwindow)
- B = fillmissing(A, 'knn', k)
- B = fillmissing(A, method, dim)
- B = fillmissing(A, 'constant', value, dim)
- B = fillmissing(..., Name, Value)
- [B, TF] = fillmissing(...)

## 📥 Input argument

- A - Input array, table or timetable.
- method - Fill method: 'constant', 'previous', 'next', 'nearest', 'linear', 'spline', 'pchip', 'makima', 'mean', 'median', 'mode', 'movmean', 'movmedian', 'knn' or a function handle.
- dim - Operating dimension: positive integer scalar (default: first non-singleton dimension). Each slice of A along dim is filled independently. Table variables are always filled along their rows.
- window - Window of the 'movmean' and 'movmedian' methods: a scalar w (window [t - w/2, t + w/2) centered on the missing entry) or a two-element vector [b a] (window [t - b, t + a]), in sample point units: a duration for datetime or duration sample points. A scalar must be finite and positive, the elements of [b a] finite and nonnegative.
- fillfun, gapwindow - Function handle called as fillfun(xs, ts, tq) for each gap of consecutive missing entries at the sample points tq. xs and ts are the values and sample points of the window [t1 - gapwindow/2, t2 + gapwindow/2] (or [t1 - b, t2 + a]) around the gap [t1, t2], the gap excluded. fillfun must return one value per element of tq.
- k - Number of nearest neighbors of the 'knn' method: real positive integer (default: 1).
- 'Distance' - Distance of the 'knn' method: 'euclidean' (default), 'seuclidean' (each difference divided by the standard deviation of its coordinate) or a function handle d = fun(x, m), where x holds the two rows to compare and m their missing entries; d must be a real scalar, NaN to reject the neighbor.
- 'EndValues' - Fill method for leading and trailing missing entries: 'extrap' (default, use method), 'previous', 'next', 'nearest', 'none', a scalar or a vector with one value per slice.
- 'MaxGap' - Maximum gap size to fill: positive scalar, a duration for datetime or duration sample points (and for timetables). The gap size is the distance between the nonmissing values surrounding the gap, relative to the sample points.
- 'SamplePoints' - Sample points (x-axis locations of the data): vector of double, single, datetime or duration values with one element per entry along dim, finite, sorted in ascending order and without duplicates. Not supported for timetables, whose row times are the sample points.
- 'MissingLocations' - Logical array of the size of A (for a table: of its height and width, or a table) giving the entries to fill; it replaces the standard missing detection. With integer or logical data, 'linear', 'spline', 'pchip', 'makima', 'movmean' and 'movmedian' are not supported.
- 'DataVariables' - Table variables to operate on.

## 📤 Output argument

- B - Data with missing values filled.
- TF - Logical array, true for the entries that were filled.

## 📄 Description


<b>fillmissing</b> replaces missing values using the specified method, along the operating dimension dim. 

'previous' and 'next' copy the previous or next nonmissing value, 'nearest' the nearest one (the next one on a tie). 'linear', 'spline', 'pchip' and 'makima' interpolate the nonmissing values of the slice and extrapolate at its ends; they need at least two nonmissing values. 'movmean' and 'movmedian' use the mean or median of the nonmissing values in the window. 

'knn' compares whole observations: the rows of a matrix (dim = 1), its columns (dim = 2) or the rows of the data variables of a table. Each missing entry takes the mean of the values of the k nearest observations holding one, the distance being measured on the nonmissing coordinates of the observation; an observation missing one of them is not a neighbor, and ties keep the observation order. 'knn' supports double and single matrices ('Distance' as a function handle also accepts other numeric data) and does not support 'EndValues', 'MaxGap' and 'SamplePoints'. 

A fill constant or numeric 'EndValues' is a scalar or a vector with one value per slice (per data variable for a table). 

For a table or a timetable, dim is not supported: each data variable is filled along its rows, the row times of a timetable being the sample points. TF has one column per variable of B, true for the rows where the variable was filled. 

'EndValues' and 'MaxGap' apply to every other method. TF is false for an entry filled with a missing value. 

The 'mean', 'median' and 'mode' methods fill each missing entry with the mean, median or mode of the nonmissing values of its slice along the operating dimension. They support numeric and logical data. A slice without any nonmissing value stays missing (except when 'EndValues' is a constant).

## 💡 Examples



```matlab
T = table([1; NaN; 3], 'VariableNames', {'A'});
R = fillmissing(T, 'constant', 0)
```
Fill with the mean, median or mode of the nonmissing values

```matlab
A = [NaN 1 1 2 NaN 6];
B1 = fillmissing(A, 'mean')
B2 = fillmissing(A, 'median')
B3 = fillmissing(A, 'mode', 'EndValues', 'none')
```
Fill along the rows of a matrix

```matlab
A = [1 NaN 3 NaN; NaN 5 NaN 8];
B1 = fillmissing(A, 'linear', 2)
B2 = fillmissing(A, 'previous', 2)
B3 = fillmissing(A, 'movmean', 3, 2)
```
Fill from the nearest rows

```matlab
A = [1 3 9 3; -5 1 7 2; -1 1 7 NaN; 12 1 9 1];
F1 = fillmissing(A, 'knn')
F2 = fillmissing(A, 'knn', 2)
F3 = fillmissing(A, 'knn', 'Distance', @(x, m) sum(abs(x(1, :) - x(2, :)), 'omitnan'))
```
Timetable and duration sample points

```matlab
TT = timetable(seconds([0; 1; 3]), [1; NaN; 3], [NaN; 5; 6]);
R = fillmissing(TT, 'linear')
F = fillmissing([1 NaN 3 NaN NaN 9], 'linear', 'SamplePoints', hours(0:5), 'MaxGap', hours(2))
```


## 🔗 See also

[rmmissing](../data_analysis/rmmissing.md), [standardizeMissing](../data_analysis/standardizeMissing.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |
| 2.0.0   | 'mean', 'median' and 'mode' fill methods. |
| 2.0.0   | all fill methods operate along dim; 'spline', 'pchip' and 'makima' fill methods. |
| 2.0.0   | 'knn' fill method and 'Distance' option. |
| 2.0.0   | timetables, datetime and duration sample points; argument validation. |

<!--
## 👤 Author

Allan CORNET
-->
