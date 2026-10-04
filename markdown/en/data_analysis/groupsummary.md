# groupsummary

Compute grouped table summaries.

## 📝 Syntax

- G = groupsummary(T, groupVars)
- G = groupsummary(T, groupVars, method, dataVars)

## 📥 Input argument

- T - Input table.
- groupVars - Grouping variables.
- method - Summary method such as sum, mean, min, max, or count.
- dataVars - Variables to summarize.

## 📤 Output argument

- G - Grouped summary table.

## 📄 Description

<b>groupsummary</b> groups table rows and computes summary values for selected variables.

## 💡 Example

```matlab
T = table({'a'; 'a'; 'b'}, [1; 2; 4], 'VariableNames', {'G', 'X'});
G = groupsummary(T, 'G', 'sum', 'X')
```

## 🔗 See also

[groupcounts](../data_analysis/groupcounts.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
