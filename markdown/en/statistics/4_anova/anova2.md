# anova2

Two-way analysis of variance.

## 📝 Syntax

- p = anova2(Y)
- p = anova2(Y, reps)
- p = anova2(Y, reps, displayopt)
- [p, tbl, stats] = anova2(...)

## 📄 Description

<b>anova2</b> performs a balanced two-way analysis of variance. Rows represent levels of the row factor and columns represent levels of the column factor.

When <b>reps</b> is greater than one, each row-factor level occupies <b>reps</b> consecutive rows. The returned p-values test columns, rows, and interaction. Without replication, interaction is not estimated.

<b>displayopt</b> can be <b>'on'</b> or <b>'off'</b>.

## 💡 Example

```matlab
Y = [8 9 6; 7 8 5; 9 10 7; 12 14 11; 13 15 12; 11 13 10];
[p, tbl, stats] = anova2(Y, 2, 'off')
```

## 🔗 See also

[anova1](../../statistics/anova1.md), [fcdf](../../statistics/fcdf.md), [vartest2](../../statistics/vartest2.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
