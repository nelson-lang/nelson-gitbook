# tabulate

Frequency table.

## 📝 Syntax

- tabulate(x)
- tbl = tabulate(x)

## 📄 Description

<b>tabulate</b> returns counts and percentages for the unique values of a vector.

Numeric input returns a numeric matrix. Text, logical, and categorical input return a cell array. Positive integer numeric input includes rows with zero counts from 1 to the maximum input value.

## 💡 Example

```matlab
x = [1 3 3 4];
tbl = tabulate(x)
```

## 🔗 See also

[crosstab](../../statistics/crosstab.md), [groupcounts](../../data_analysis/groupcounts.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
