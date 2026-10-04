# chi2gof

Chi-square goodness-of-fit test.

## 📝 Syntax

- h = chi2gof(x)
- h = chi2gof(x, Name, Value)
- [h, p, stats] = chi2gof(...)

## 📄 Description

<b>chi2gof</b> performs a chi-square goodness-of-fit test for a real numeric vector. Non-finite observations and nonpositive or non-finite frequencies are omitted.

Name-value arguments include <b>Alpha</b>, <b>NBins</b>, <b>Ctrs</b>, <b>Edges</b>, <b>CDF</b>, <b>Expected</b>, <b>Frequency</b>, <b>NParams</b>, and <b>EMin</b>. <b>CDF</b> can be a two-column matrix or a function handle.

The <b>stats</b> output contains <b>chi2stat</b>, <b>df</b>, <b>edges</b>, <b>O</b>, and <b>E</b>.

## 💡 Example

```matlab
x = norminv(((1:100) - 0.5) / 100);
[h, p, stats] = chi2gof(x)
```

## 🔗 See also

[chi2cdf](../../statistics/chi2cdf.md), [kstest](../../statistics/kstest.md), [crosstab](../../statistics/crosstab.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
