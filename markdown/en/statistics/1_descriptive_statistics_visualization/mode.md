# mode

Most frequent values.

## 📝 Syntax

- M = mode(A)
- M = mode(A, d)
- [M, F, C] = mode(...)

## 📥 Input argument

- A - input array.
- d - dimension to operate along: positive integer scalar.

## 📤 Output argument

- M - Most frequent values.
- F - Frequencies of the most frequent values.
- C - Cell array containing the most frequent values.

## 📄 Description


<b>mode</b> returns the most frequent values of A along the selected dimension.

## Used function(s)


    mean
    median
    std
  

## 💡 Example



```matlab
A = [1 2 2; 3 3 4];
[M, F, C] = mode(A)
```


## 🔗 See also

[median](../../statistics/1_descriptive_statistics_visualization/median.md), [sort](../../data_analysis/sort.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
