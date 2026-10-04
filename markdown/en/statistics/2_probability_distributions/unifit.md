# unifit

Continuous uniform parameter estimates

## 📝 Syntax

- [aHat, bHat] = unifit(x)
- [aHat, bHat, aCI, bCI] = unifit(x)
- [aHat, bHat, aCI, bCI] = unifit(x, alpha)

## 📥 Input argument

- x - real vector or matrix: sample data.
- alpha - scalar in [0, 1]: significance level. The default is 0.05.

## 📤 Output argument

- aHat - row vector: lower endpoint estimates.
- bHat - row vector: upper endpoint estimates.
- aCI - 2-by-n array: confidence intervals for lower endpoints.
- bCI - 2-by-n array: confidence intervals for upper endpoints.

## 📄 Description

<b>unifit</b> returns maximum likelihood estimates for continuous uniform endpoint parameters.

Vector inputs are treated as one sample. Matrix inputs are processed column by column.

## 💡 Example

```matlab
x = [2 5 3 4];
[aHat, bHat, aCI, bCI] = unifit(x);
[aHat2, bHat2] = unifit([1 2; 3 4; 4 9]);
```

## 🔗 See also

[uniflike](../../statistics/uniflike.md), [unifpdf](../../statistics/unifpdf.md), [unifcdf](../../statistics/unifcdf.md), [unifinv](../../statistics/unifinv.md), [unifstat](../../statistics/unifstat.md), [unifrnd](../../statistics/unifrnd.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
