# iqr

Interquartile range.

## 📝 Syntax

- r = iqr(A)
- r = iqr(A, dim)
- r = iqr(A, vecdim)
- r = iqr(A, 'all')
- [r, q] = iqr(...)

## 📄 Description

<b>iqr</b> returns the difference between the third and first quartiles. The optional second output contains the first and third quartiles.

Dimensions can be a scalar dimension, a vector of dimensions, or <b>all</b>.

<b>A</b> can be a real numeric array, a <b>datetime</b> array or a <b>duration</b> array. For datetime input data, the interquartile range <b>r</b> is a duration and the quartiles <b>q</b> are datetime values. For duration input data, <b>r</b> and <b>q</b> are durations. <b>NaT</b> values are omitted like <b>NaN</b> values.

## 💡 Examples

```matlab
A = [2 5 6 10 11 13];
[r, q] = iqr(A)
```

datetime and duration input data

```matlab
t = datetime(2024, 1, [1 3 5 7 30]);
[r, q] = iqr(t)
```

## 🔗 See also

[quantile](../../statistics/quantile.md), [prctile](../../statistics/prctile.md), [mad](../../statistics/mad.md).

## 🕔 History

| Version | 📄 Description                              |
| ------- | ------------------------------------------- |
| 2.0.0   | initial version                             |
| 2.0.0   | datetime and duration input data supported. |

<!--
## 👤 Author

Allan CORNET
-->
