# splitapply

Split data into groups and apply a function.

## 📝 Syntax

- Y = splitapply(func, A, G)
- Y = splitapply(func, A1, ..., An, G)
- [Y1, ..., Ym] = splitapply(func, ..., G)

## 📥 Input argument

- func - a function handle applied to each group.
- A, A1, ..., An - the data to split by group (rows).
- G - group numbers, typically from <b>findgroups</b>.

## 📤 Output argument

- Y - the results, with one row per group.

## 📄 Description


<b>Y = splitapply(func, A, G)</b> splits <b>A</b> into groups according to <b>G</b> and applies <b>func</b> to each group, concatenating the results.

## 💡 Example



```matlab
G = findgroups([1; 2; 1; 2; 1]);
Y = splitapply(@sum, [10; 20; 30; 40; 50], G)
```


## 🔗 See also

[findgroups](../data_analysis/findgroups.md), [accumarray](../data_analysis/accumarray.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
