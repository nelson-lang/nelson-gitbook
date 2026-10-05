# ttest

One-sample and paired t-test

## 📝 Syntax

- h = ttest(x)
- h = ttest(x, m)
- h = ttest(x, y)
- [h, p, ci, stats] = ttest(..., 'Alpha', alpha, 'Tail', tail, 'Dim', dim)

## 📥 Input argument

- x - real array: sample data.
- m - real scalar, 0 by default: hypothesized mean.
- y - real array with the same size as x: paired sample.
- alpha - scalar in (0,1), 0.05 by default: significance level.
- tail - 'both', 'right', or 'left'.
- dim - positive integer: dimension to operate along.

## 📤 Output argument

- h - logical array: test decision.
- p - array: p-values.
- ci - 2-row array: confidence intervals for the mean difference.
- stats - structure with tstat, df, and sd fields.

## 📄 Description


<b>ttest</b> performs a t-test along the first non-singleton dimension unless <b>Dim</b> is specified. 

NaN values are omitted from each tested slice.

## 💡 Example



```matlab
x = [2 4 5 6 9];
[h, p, ci, stats] = ttest(x, 4);
[h2, p2] = ttest([4 6 7], [3 5 7], 'Tail', 'right');
```


## 🔗 See also

[mean](../../statistics/1_descriptive_statistics_visualization/mean.md), [std](../../statistics/1_descriptive_statistics_visualization/std.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
