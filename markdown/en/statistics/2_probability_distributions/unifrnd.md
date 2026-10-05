# unifrnd

Continuous uniform random numbers

## 📝 Syntax

- r = unifrnd(a, b)
- r = unifrnd(a, b, sz)
- r = unifrnd(a, b, sz1, ..., szN)

## 📥 Input argument

- a - real scalar or array: lower endpoint.
- b - real scalar or array: upper endpoint.
- sz - size vector or size scalars for the output.

## 📤 Output argument

- r - array: random values.

## 📄 Description


<b>unifrnd</b> generates random numbers from continuous uniform distributions using Nelson's global random generator. 

Scalar endpoints are expanded to the requested output size. Invalid intervals produce NaN values.

## 💡 Example



```matlab
rng(0);
r = unifrnd(0, 1);
r2 = unifrnd(0, 1, [2 3]);
r3 = unifrnd(0:5, 1:6, 1, 6);
```


## 🔗 See also

[unifpdf](../../statistics/2_probability_distributions/unifpdf.md), [unifcdf](../../statistics/2_probability_distributions/unifcdf.md), [unifinv](../../statistics/2_probability_distributions/unifinv.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
