# isoutlier

Find outliers in numeric data.

## 📝 Syntax

- TF = isoutlier(A)
- TF = isoutlier(A, method)
- TF = isoutlier(A, 'percentiles', threshold)
- TF = isoutlier(A, movmethod, window)
- TF = isoutlier(..., dim)
- TF = isoutlier(..., Name, Value)
- [TF, L, U, C] = isoutlier(...)

## 📄 Description

<b>isoutlier</b> returns a logical array that marks elements detected as outliers.

The supported methods are <b>median</b>, <b>mean</b>, <b>quartiles</b>, <b>percentiles</b>, <b>grubbs</b>, <b>gesd</b>, <b>movmedian</b>, and <b>movmean</b>. Numeric <b>NaN</b> values are omitted from threshold estimation and are not marked as outliers.

Name-value arguments include <b>ThresholdFactor</b>, <b>MaxNumOutliers</b>, and <b>SamplePoints</b>. The additional outputs contain the lower threshold, upper threshold, and center value.

## 💡 Examples

```matlab
A = [57 59 60 100 59 58 57 58 300 61 62 60 62 58 57];
TF = isoutlier(A)
```

```matlab
A = [60 59 49 49 58 100 61 57 48 58];
[TF, L, U, C] = isoutlier(A, 'median')
```

```matlab
A = [1 1 100 1 1];
t = [1 2 100 101 102];
TF = isoutlier(A, 'movmedian', 3, 'SamplePoints', t)
```

## 🔗 See also

[median](../../statistics/median.md), [mean](../../statistics/mean.md), [iqr](../../statistics/iqr.md), [zscore](../../statistics/zscore.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
