# filloutliers

Detect and replace outliers in numeric data.

## 📝 Syntax

- B = filloutliers(A, fillmethod)
- B = filloutliers(A, fillmethod, method)
- B = filloutliers(A, fillmethod, 'percentiles', threshold)
- B = filloutliers(A, fillmethod, movmethod, window)
- B = filloutliers(..., dim)
- B = filloutliers(..., Name, Value)
- [B, TF, L, U, C] = filloutliers(...)

## 📄 Description

<b>filloutliers</b> detects outliers in a numeric array and replaces them using a selected fill method.

Fill methods include <b>previous</b>, <b>next</b>, <b>nearest</b>, <b>linear</b>, <b>pchip</b>, <b>clip</b>, or a numeric scalar constant. Detection methods and name-value arguments are shared with <b>isoutlier</b>. The <b>OutlierLocations</b> name-value argument can provide a logical mask directly.

## 💡 Examples

```matlab
A = [57 59 60 100 59 58 57 58 300 61 62 60 62 58 57];
B = filloutliers(A, 'linear')
```

```matlab
A = [60 59 49 49 58 100 61 57 48 58];
[B, TF, L, U, C] = filloutliers(A, 'clip')
```

## 🔗 See also

[isoutlier](../../statistics/isoutlier.md), [rmoutliers](../../statistics/rmoutliers.md), [fillmissing](../../data_analysis/fillmissing.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
