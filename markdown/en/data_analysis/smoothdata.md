# smoothdata

Smooth noisy data.

## 📝 Syntax

- B = smoothdata(A)
- B = smoothdata(A, method)
- B = smoothdata(A, method, window)
- B = smoothdata(A, dim)
- B = smoothdata(A, dim, method)
- B = smoothdata(A, dim, method, window)
- B = smoothdata(\_\_, nanflag)
- B = smoothdata(\_\_, Name, Value)
- [B, window] = smoothdata(\_\_)

## 📥 Input argument

- A - input vector or matrix: numeric or logical.
- method - a character vector or string: smoothing method. See the description for the list of supported methods.
- window - a positive scalar or a two-element vector <b>[back forward]</b>: moving window length.
- dim - dimension to operate along: positive integer scalar.
- nanflag - a character vector or string: <b>'omitnan'</b> (default) or <b>'includenan'</b>.
- Name, Value - parameter name/value pairs: <b>'SamplePoints'</b>, <b>'SmoothingFactor'</b>, <b>'Degree'</b>.

## 📤 Output argument

- B - smoothed data.
- window - moving window length used for the smoothing.

## 📄 Description

<b>smoothdata</b> smooths noisy data in a vector or in the columns of a matrix.

By default, <b>smoothdata</b> operates along the first non-singleton dimension using the <b>'movmean'</b> method and a heuristic window length chosen from the data.

The supported values of <b>method</b> are:

<b>'movmean'</b>: moving average over each window (default).

<b>'movmedian'</b>: moving median over each window.

<b>'gaussian'</b>: moving weighted average with Gaussian weights.

<b>'lowess'</b>: local regression using a first-degree polynomial.

<b>'loess'</b>: local regression using a second-degree polynomial.

<b>'sgolay'</b>: Savitzky-Golay polynomial filter (use <b>'Degree'</b> to set the polynomial degree, default 2).

The <b>'omitnan'</b> flag (default) ignores <b>NaN</b> values inside each window, while <b>'includenan'</b> propagates them.

<b>'SmoothingFactor'</b> is a scalar between 0 and 1 that tunes the automatically chosen window length; larger values give more smoothing.

<b>'SamplePoints'</b> is a vector of uniformly spaced sample coordinates; the window is then expressed in the units of these coordinates.

The robust methods <b>'rlowess'</b> and <b>'rloess'</b> are not supported yet.

## 💡 Examples

moving average

```matlab
A = [1 2 10 4 5];
B = smoothdata(A, 'movmean', 3)
```

Gaussian smoothing

```matlab
A = [1 2 10 4 5];
B = smoothdata(A, 'gaussian', 3)
```

automatically chosen window

```matlab
A = [1 2 10 4 5];
[B, window] = smoothdata(A)
```

## 🔗 See also

[movmean](../data_analysis/movmean.md), [movmedian](../data_analysis/movmedian.md), [fillmissing](../data_analysis/fillmissing.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
