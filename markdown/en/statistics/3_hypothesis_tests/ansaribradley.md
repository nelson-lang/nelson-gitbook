# ansaribradley

Ansari-Bradley test for equal dispersion.

## 📝 Syntax

- h = ansaribradley(x, y)
- h = ansaribradley(x, y, Name, Value)
- [h, p, stats] = ansaribradley(...)

## 📄 Description

<b>ansaribradley</b> performs a nonparametric two-sample test for equal dispersion. Vector inputs can have different lengths. Array inputs are tested along a selected dimension and must match outside that dimension.

Name-value arguments include <b>Alpha</b>, <b>Dim</b>, <b>Tail</b>, and <b>Method</b>. The <b>stats</b> output contains <b>W</b> and <b>Wstar</b>.

## 💡 Example

```matlab
x = [1 2 9 10];
y = [4 5 6 7];
[h, p, stats] = ansaribradley(x, y)
```

## 🔗 See also

[vartest2](../../statistics/vartest2.md), [ranksum](../../statistics/ranksum.md), [normcdf](../../statistics/normcdf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
