# betarnd

Beta random numbers

## 📝 Syntax

- r = betarnd(a, b)
- r = betarnd(a, b, sz)
- r = betarnd(a, b, sz1, ..., szN)

## 📥 Input argument

- a - positive scalar or array: first shape parameter.
- b - positive scalar or array: second shape parameter.
- sz - scalar, vector, or comma-separated dimensions: output size.

## 📤 Output argument

- r - array: random values.

## 📄 Description


<b>betarnd</b> generates beta distributed random values. Scalar parameters are expanded to match array inputs or the requested output size.

## 💡 Example



```matlab
rng(0);
r = betarnd(2, 5, 2, 3);
```


## 🔗 See also

[betapdf](../../statistics/2_probability_distributions/betapdf.md), [betacdf](../../statistics/2_probability_distributions/betacdf.md), [betainv](../../statistics/2_probability_distributions/betainv.md), [betastat](../../statistics/2_probability_distributions/betastat.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
