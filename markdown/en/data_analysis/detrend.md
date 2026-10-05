# detrend

Remove polynomial trend.

## 📝 Syntax

- y = detrend(x)
- y = detrend(x, n)
- y = detrend(x, method)
- y = detrend(x, n, bp)

## 📥 Input argument

- x - a real vector or matrix. For a matrix, each column is detrended independently.
- n - trend order: 0 removes the mean, 1 (default) removes a best-fit straight line.
- method - 'constant' (same as 0) or 'linear' (same as 1).
- bp - breakpoints given as row indices, producing a continuous piecewise-linear trend.

## 📤 Output argument

- y - the data with the trend removed, with the same size and class as <b>x</b>.

## 📄 Description


<b>detrend</b> removes a low-order polynomial trend from data by a least-squares fit and returns the residual. 

By default it removes a straight-line trend. With <b>n</b> equal to 0 (or the method <b>'constant'</b>) it removes only the mean. Breakpoints produce a continuous piecewise-linear trend joined at the given row indices. 

A row vector input returns a row vector; a column vector returns a column vector.

## 💡 Examples



```matlab
t = 0:0.1:2;
x = 3 * t + sin(t);
y = detrend(x)

```


```matlab
y = detrend([1 3 2 4 6], 'constant')

```


## 🔗 See also

[cumsum](../data_analysis/cumsum.md), [mean](../statistics/1_descriptive_statistics_visualization/mean.md), [polyfit](../polynomial_functions/polyfit.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
