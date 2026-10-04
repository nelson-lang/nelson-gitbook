# fishertest

Fisher exact test for a 2-by-2 table.

## 📝 Syntax

- h = fishertest(x)
- [h, p, stats] = fishertest(x)
- [h, p, stats] = fishertest(x, Name, Value)

## 📄 Description

<b>fishertest</b> performs Fisher's exact test for a 2-by-2 contingency table. The input can be a numeric matrix or a table containing nonnegative integer counts.

Name-value arguments include <b>Alpha</b> and <b>Tail</b>. The <b>stats</b> output contains <b>OddsRatio</b> and <b>ConfidenceInterval</b>.

## 💡 Example

```matlab
x = [3 6; 1 7];
[h, p, stats] = fishertest(x, 'Tail', 'right')
```

## 🔗 See also

[crosstab](../../statistics/crosstab.md), [chi2gof](../../statistics/chi2gof.md), [norminv](../../statistics/norminv.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
