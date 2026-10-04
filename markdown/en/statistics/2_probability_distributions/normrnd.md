# normrnd

Normal random numbers

## 📝 Syntax

- r = normrnd(mu, sigma)
- r = normrnd(mu, sigma, sz)
- r = normrnd(mu, sigma, sz1, ..., szN)

## 📥 Input argument

- mu - real scalar or array: mean.
- sigma - real scalar or array: standard deviation.
- sz - size vector or size scalars for the output.

## 📤 Output argument

- r - array: random values.

## 📄 Description

<b>normrnd</b> generates random numbers from normal distributions using Nelson's global random generator.

Scalar parameters are expanded to the requested output size. Negative standard deviations produce NaN values.

## 💡 Example

```matlab
rng(0);
r = normrnd(0, 1, 3, 4);
r2 = normrnd([0 10], [1 2]);
```

## 🔗 See also

[normcdf](../../statistics/normcdf.md), [norminv](../../statistics/norminv.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
