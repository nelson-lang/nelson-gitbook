# geornd

Geometric random numbers

## 📝 Syntax

- r = geornd(p)
- r = geornd(p, sz)
- r = geornd(p, sz1, ..., szN)

## 📥 Input argument

- p - scalar or array in the range [0, 1]: probability of success.
- sz - scalar, vector, or comma-separated dimensions: output size.

## 📤 Output argument

- r - array: random values.

## 📄 Description


<b>geornd</b> generates geometric distributed random values.

## 💡 Example



```matlab
rng(0);
r = geornd(0.25, 2, 3);
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
