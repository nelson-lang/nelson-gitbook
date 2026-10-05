# nanmax

Maximum, ignoring NaN values.

## 📝 Syntax

- y = nanmax(X)
- [y, idx] = nanmax(X)
- y = nanmax(X, Y)
- [y, idx] = nanmax(X, [], dim)

## 📄 Description


<b>nanmax</b> returns the maximum after removing <b>NaN</b> values; a slice made only of <b>NaN</b> yields <b>NaN</b>. 

<b>nanmax(X, Y)</b> returns the element-wise maximum of <b>X</b> and <b>Y</b>, ignoring <b>NaN</b>. 

The optional second output <b>idx</b> holds the indices of the maxima. It is equivalent to <b>max(X, ..., 'omitnan')</b>.

## 💡 Example



```matlab
[y, idx] = nanmax([1 NaN 5 NaN 3])
```


## 🔗 See also

[max](../../data_analysis/max.md), [nanmin](../../statistics/1_descriptive_statistics_visualization/nanmin.md), [nansum](../../statistics/1_descriptive_statistics_visualization/nansum.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
