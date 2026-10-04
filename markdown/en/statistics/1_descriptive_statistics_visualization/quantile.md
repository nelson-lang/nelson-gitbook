# quantile

Quantiles of a data set.

## 📝 Syntax

- Q = quantile(A, p)
- Q = quantile(A, n)
- Q = quantile(A, p, dim)
- Q = quantile(A, p, vecdim)
- Q = quantile(A, p, 'all')
- Q = quantile(..., 'Method', method)

## 📄 Description

<b>quantile</b> returns quantiles for probabilities in the interval [0,1]. If the second input is an integer greater than one, it is interpreted as the number of evenly spaced quantiles.

<b>NaN</b> values are omitted. Supported methods are <b>midpoint</b>, <b>exact</b>, <b>inclusive</b>, <b>exclusive</b>, and <b>approximate</b>.

<b>A</b> can be a real numeric array, a <b>datetime</b> array or a <b>duration</b> array. For datetime or duration input data, the quantiles have the same class and Format as <b>A</b>, and <b>NaT</b> values are omitted like <b>NaN</b> values.

## 💡 Examples

```matlab
A = [2 5 6 10 11 13];
Q = quantile(A, [0.25 0.5 0.75])
```

datetime and duration input data

```matlab
d = hours([1 2 3 4 10]);
Q = quantile(d, [0.25 0.5 0.75])
```

## 🔗 See also

[prctile](../../statistics/prctile.md), [iqr](../../statistics/iqr.md), [median](../../statistics/median.md).

## 🕔 History

| Version | 📄 Description                              |
| ------- | ------------------------------------------- |
| 2.0.0   | initial version                             |
| 2.0.0   | datetime and duration input data supported. |

<!--
## 👤 Author

Allan CORNET
-->
