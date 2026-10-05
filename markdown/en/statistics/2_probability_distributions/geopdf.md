# geopdf

Geometric probability density function

## 📝 Syntax

- y = geopdf(x, p)

## 📥 Input argument

- x - real scalar or array: number of failures before the first success.
- p - scalar or array in the range [0, 1]: probability of success.

## 📤 Output argument

- y - array: probability values.

## 📄 Description


<b>geopdf</b> evaluates geometric probability values element by element.

## 💡 Example



```matlab
x = [0 1 2 5];
y = geopdf(x, 0.25);
```


## 🔗 See also

[geocdf](../../statistics/2_probability_distributions/geocdf.md), [geoinv](../../statistics/2_probability_distributions/geoinv.md), [geornd](../../statistics/2_probability_distributions/geornd.md), [geostat](../../statistics/2_probability_distributions/geostat.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
