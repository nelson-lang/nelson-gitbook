# nanmin

Minimum, ignoring NaN values.

## 📝 Syntax

- y = nanmin(X)
- [y, idx] = nanmin(X)
- y = nanmin(X, Y)
- [y, idx] = nanmin(X, [], dim)

## 📄 Description


<b>nanmin</b> returns the minimum after removing <b>NaN</b> values; a slice made only of <b>NaN</b> yields <b>NaN</b>. 

<b>nanmin(X, Y)</b> returns the element-wise minimum of <b>X</b> and <b>Y</b>, ignoring <b>NaN</b>. 

The optional second output <b>idx</b> holds the indices of the minima. It is equivalent to <b>min(X, ..., 'omitnan')</b>.

## 💡 Example



```matlab
[y, idx] = nanmin([4 NaN 1 NaN 3])
```


## 🔗 See also

[min](../../data_analysis/min.md), [nanmax](../../statistics/1_descriptive_statistics_visualization/nanmax.md), [nansum](../../statistics/1_descriptive_statistics_visualization/nansum.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
