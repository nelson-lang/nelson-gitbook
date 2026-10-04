# dummyvar

Create dummy variables from grouping variables.

## 📝 Syntax

- D = dummyvar(group)

## 📄 Description

<b>dummyvar</b> creates a numeric matrix of indicator columns for the grouping variables in <b>group</b>.

Each numeric matrix column, categorical vector, text vector, or cell element in <b>group</b> contributes one block of dummy variables. Missing group values produce <b>NaN</b> rows in their block.

## 💡 Example

```matlab
Colors = categorical({'Red'; 'Blue'; 'Green'; 'Red'; 'Green'; 'Blue'});
D = dummyvar(Colors)
```

## 🔗 See also

[grp2idx](../../statistics/grp2idx.md), [anova1](../../statistics/anova1.md), [x2fx](../../statistics/x2fx.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
