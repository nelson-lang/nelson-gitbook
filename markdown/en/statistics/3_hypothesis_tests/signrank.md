# signrank

Wilcoxon signed rank test.

## 📝 Syntax

- p = signrank(x)
- p = signrank(x, y)
- p = signrank(x, y, Name, Value)
- [p, h, stats] = signrank(...)

## 📄 Description

<b>signrank</b> performs a paired Wilcoxon signed rank test. If <b>y</b> is omitted, values in <b>x</b> are tested against zero. If <b>y</b> is a scalar, values in <b>x</b> are tested against that scalar.

Name-value arguments include <b>Alpha</b>, <b>Tail</b>, and <b>Method</b>. Zero and <b>NaN</b> differences are omitted.

## 💡 Example

```matlab
x = [1 3 5 -2];
[p, h, stats] = signrank(x)
```

## 🔗 See also

[ranksum](../../statistics/ranksum.md), [ttest](../../statistics/ttest.md), [normcdf](../../statistics/normcdf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
