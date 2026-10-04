# ttest2

Two-sample t-test

## 📝 Syntax

- h = ttest2(x, y)
- h = ttest2(x, y, 'Alpha', alpha)
- h = ttest2(x, y, 'Tail', tail)
- h = ttest2(x, y, 'Vartype', vartype)
- h = ttest2(x, y, 'Dim', dim)
- [h, p, ci, stats] = ttest2(...)

## 📥 Input argument

- x - real numeric array: first sample.
- y - real numeric array: second sample.
- alpha - scalar in (0,1), 0.05 by default: significance level.
- tail - 'both', 'right', or 'left'.
- vartype - 'equal' by default or 'unequal' for Welch's test.
- dim - positive integer: dimension to operate along.

## 📤 Output argument

- h - logical array: test decision.
- p - array: p-values.
- ci - 2-row array: confidence intervals for the mean difference.
- stats - structure with tstat, df, and sd fields.

## 📄 Description

<b>ttest2</b> performs a two-sample t-test along the first non-singleton dimension unless <b>Dim</b> is specified.

NaN values are omitted independently from each tested sample.

## 💡 Example

```matlab
x = [10 11 13 15 18];
y = [7 8 8 9];
[h, p, ci, stats] = ttest2(x, y, 'Vartype', 'unequal', 'Tail', 'right');
```

## 🔗 See also

[ttest](../../statistics/ttest.md), [mean](../../statistics/mean.md), [std](../../statistics/std.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
