# vartest

Chi-square test for a variance

## 📝 Syntax

- h = vartest(x, v)
- h = vartest(x, v, 'Alpha', alpha)
- h = vartest(x, v, 'Tail', tail)
- h = vartest(x, v, 'Dim', dim)
- [h, p, ci, stats] = vartest(...)

## 📥 Input argument

- x - real numeric array: sample data.
- v - nonnegative real scalar: hypothesized variance.
- alpha - scalar in (0,1), 0.05 by default: significance level.
- tail - 'both', 'right', or 'left'.
- dim - positive integer: dimension to operate along.

## 📤 Output argument

- h - logical array: test decision.
- p - array: p-values.
- ci - 2-row array: confidence intervals for the variance.
- stats - structure with chisqstat and df fields.

## 📄 Description


<b>vartest</b> performs a chi-square variance test along the first non-singleton dimension unless <b>Dim</b> is specified. 

NaN values are omitted from each tested slice.

## 💡 Example



```matlab
x = [4.5 4.8 5.1 5.4 5.7 6.0];
[h, p, ci, stats] = vartest(x, 0.4);
[h2, p2] = vartest(x, 0.2, 'Tail', 'right');
```


## 🔗 See also

[var](../../statistics/1_descriptive_statistics_visualization/var.md), [std](../../statistics/1_descriptive_statistics_visualization/std.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
