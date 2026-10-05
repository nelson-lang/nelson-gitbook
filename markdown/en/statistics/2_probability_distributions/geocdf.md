# geocdf

Geometric cumulative distribution function

## 📝 Syntax

- y = geocdf(x, p)
- y = geocdf(x, p, 'upper')

## 📥 Input argument

- x - real scalar or array: number of failures before the first success.
- p - scalar or array in the range [0, 1]: probability of success.
- 'upper' - option to return the upper tail probability.

## 📤 Output argument

- y - array: probability values.

## 📄 Description


<b>geocdf</b> evaluates geometric cumulative probabilities element by element.

## 💡 Example



```matlab
x = [0 1 2 5];
y = geocdf(x, 0.25);
```


## 🔗 See also

[geopdf](../../statistics/2_probability_distributions/geopdf.md), [geoinv](../../statistics/2_probability_distributions/geoinv.md), [geornd](../../statistics/2_probability_distributions/geornd.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
