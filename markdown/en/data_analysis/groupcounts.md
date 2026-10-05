# groupcounts

Count groups.

## 📝 Syntax

- counts = groupcounts(A)
- [counts, groups] = groupcounts(A)
- G = groupcounts(T, groupVars)

## 📥 Input argument

- A - Input array.
- T - Input table.
- groupVars - Grouping variables.

## 📤 Output argument

- counts - Number of elements in each group.
- groups - Unique group values.
- G - Table containing groups, counts, and percentages.

## 📄 Description


<b>groupcounts</b> counts the number of elements or table rows in each group.

## 💡 Example



```matlab
[counts, groups] = groupcounts([1; 1; 2; 3; 3; 3])
T = table({'a'; 'a'; 'b'}, [1; 2; 4], 'VariableNames', {'G', 'X'});
C = groupcounts(T, 'G')
```


## 🔗 See also

[groupsummary](../data_analysis/groupsummary.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
