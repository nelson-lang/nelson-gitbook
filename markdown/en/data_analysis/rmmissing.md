# rmmissing

Remove missing data.

## 📝 Syntax

- B = rmmissing(A)
- B = rmmissing(A, dim)

## 📥 Input argument

- A - Input array or table.
- dim - Dimension to operate along.

## 📤 Output argument

- B - Data with missing rows, columns, or elements removed.

## 📄 Description


<b>rmmissing</b> removes missing data from arrays and removes rows or variables containing missing values from tables.

## 💡 Examples



```matlab
A = [1 NaN; 2 3; NaN 4];
B = rmmissing(A)
```


```matlab
T = table([1; NaN; 3], {'a'; ''; 'c'}, 'VariableNames', {'A', 'B'});
R = rmmissing(T)
```


## 🔗 See also

[ismissing](../data_analysis/ismissing.md), [fillmissing](../data_analysis/fillmissing.md), [standardizeMissing](../data_analysis/standardizeMissing.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
