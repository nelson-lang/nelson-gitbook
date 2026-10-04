# geomean

Geometric mean of a data set.

## 📝 Syntax

- m = geomean(X)
- m = geomean(X, dim)
- m = geomean(X, vecdim)
- m = geomean(X, 'all')
- m = geomean(..., nanflag)

## 📄 Description

<b>geomean</b> computes the geometric mean of numeric data.

By default, <b>NaN</b> values are included. Use <b>omitnan</b> to ignore them.

## 💡 Example

```matlab
X = reshape(1:30, [3 5 2]);
m = geomean(X, [1 2])
```

## 🔗 See also

[harmmean](../../statistics/harmmean.md), [mean](../../statistics/mean.md), [median](../../statistics/median.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
