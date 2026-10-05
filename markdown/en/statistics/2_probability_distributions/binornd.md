# binornd

Binomial random numbers

## 📝 Syntax

- r = binornd(n, p)
- r = binornd(n, p, sz)
- r = binornd(n, p, sz1, ..., szN)

## 📥 Input argument

- n - nonnegative integer scalar or array: number of trials.
- p - scalar or array in the range [0, 1]: event probability.
- sz - scalar, vector, or comma-separated dimensions: output size.

## 📤 Output argument

- r - array: random values.

## 📄 Description


<b>binornd</b> generates binomial distributed random values. Scalar parameters are expanded to match array inputs or the requested output size.

## 💡 Example



```matlab
rng(0);
r = binornd(10, 0.3, 2, 3);
```


## 🔗 See also

[binopdf](../../statistics/2_probability_distributions/binopdf.md), [binocdf](../../statistics/2_probability_distributions/binocdf.md), [binoinv](../../statistics/2_probability_distributions/binoinv.md), [binostat](../../statistics/2_probability_distributions/binostat.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
