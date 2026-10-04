# fsrftest

Rank predictors using univariate regression F-tests.

## 📝 Syntax

- idx = fsrftest(X, y)
- [idx, scores] = fsrftest(X, y)
- [idx, scores] = fsrftest(X, y, Name, Value)

## 📄 Description

<b>fsrftest</b> ranks predictors by applying an independent regression F-test to each column of X.

Supported name-value options are CategoricalPredictors, NumBins, UseMissing, and Weights. idx contains predictor indices ordered by decreasing score. scores contains one score per predictor.

## 💡 Example

```matlab
X = [1 0 3; 2 1 2; 3 0 1; 4 1 2; 5 0 3; 6 1 4];
y = [1; 2; 2; 4; 4; 7];
[idx, scores] = fsrftest(X, y, 'NumBins', 2)
```

## 🔗 See also

[relieff](../../statistics/relieff.md), [sequentialfs](../../statistics/sequentialfs.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
