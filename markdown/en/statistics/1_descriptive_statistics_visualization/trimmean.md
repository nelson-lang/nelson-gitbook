# trimmean

Mean after trimming extreme values.

## 📝 Syntax

- m = trimmean(X, percent)
- m = trimmean(X, percent, flag)
- m = trimmean(..., dim)
- m = trimmean(..., vecdim)
- m = trimmean(..., 'all')

## 📄 Description


<b>trimmean</b> computes the mean after removing a percentage of the smallest and largest values. <b>NaN</b> values are omitted. 

<b>flag</b> controls noninteger trimming counts and can be <b>round</b>, <b>floor</b>, or <b>weighted</b>.

## 💡 Example



```matlab
X = reshape(1:40, [5 4 2]);
X([3 37]) = -100;
m = trimmean(X, 10, [1 2])
```


## 🔗 See also

[mean](../../statistics/1_descriptive_statistics_visualization/mean.md), [median](../../statistics/1_descriptive_statistics_visualization/median.md), [geomean](../../statistics/1_descriptive_statistics_visualization/geomean.md), [harmmean](../../statistics/1_descriptive_statistics_visualization/harmmean.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
