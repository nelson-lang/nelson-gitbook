# geostat

Geometric mean and variance

## 📝 Syntax

- [m, v] = geostat(p)

## 📥 Input argument

- p - scalar or array in the range [0, 1]: probability of success.

## 📤 Output argument

- m - array: mean values.
- v - array: variance values.

## 📄 Description


<b>geostat</b> returns the mean and variance of the geometric distribution.

## 💡 Example



```matlab
[m, v] = geostat(0.25);
```


## 🔗 See also

[geopdf](../../statistics/2_probability_distributions/geopdf.md), [geocdf](../../statistics/2_probability_distributions/geocdf.md), [geoinv](../../statistics/2_probability_distributions/geoinv.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
