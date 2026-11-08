# findgroups

Find groups and return group numbers.

## 📝 Syntax

- G = findgroups(A)
- [G, ID] = findgroups(A)
- [G, ID1, ..., IDn] = findgroups(A1, ..., An)

## 📥 Input argument

- A, A1, ..., An - grouping variables with the same number of elements.

## 📤 Output argument

- G - group numbers; missing values map to <b>NaN</b>.
- ID - the group identifiers, one output per grouping variable.

## 📄 Description


<b>G = findgroups(A)</b> returns a vector of group numbers created from the grouping variable <b>A</b>. 

Use <b>G</b> with <b>splitapply</b> to apply a function to each group.

## 💡 Example



```matlab
[G, id] = findgroups([10; 20; 10; 30; 20])
```


## 🔗 See also

[splitapply](../data_analysis/splitapply.md), [accumarray](../data_analysis/accumarray.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
