# summary

Summarize table variables or categorical values.

## 📝 Syntax

- S = summary(T)
- summary(A)

## 📥 Input argument

- T - Input table.
- A - Input categorical array.

## 📤 Output argument

- S - Structure with table variable summary information.

## 📄 Description

<b>summary</b> returns size and type information for each table variable.

Numeric table variables also include minimum, maximum, mean, median, standard deviation, and missing value counts.

For categorical arrays, <b>summary</b> displays the count for each category and for undefined values.

## 💡 Examples

Summarize a table.

```matlab
T = table([1; 2; 3], ["a"; "b"; "c"], 'VariableNames', {'A', 'Label'});
S = summary(T)
```

Display categorical counts.

```matlab
A = categorical({'red','blue','red',''});
summary(A)
```

## 🔗 See also

[table](../table/table.md), [categorical](../categorical/categorical.md), [countcats](../categorical/countcats.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
