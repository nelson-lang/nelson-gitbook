# normfit

Normal mean and standard deviation estimates

## 📝 Syntax

- [muhat, sigmahat] = normfit(x)
- [muhat, sigmahat, muci, sigmaci] = normfit(x, alpha)
- [muhat, sigmahat, muci, sigmaci] = normfit(x, alpha, censoring, freq)
- [muhat, sigmahat, muci, sigmaci] = normfit(x, alpha, censoring, freq, options)

## 📥 Input argument

- x - finite real nonempty vector or matrix: sample data.
- alpha - scalar in the range [0, 1]: significance level. Default is 0.05.
- censoring - array containing 0 or 1 values: right-censoring flags.
- freq - array of nonnegative finite values: observation frequencies.
- options - structure created by statset. MaxIter and TolX control censored-data optimization.

## 📤 Output argument

- muhat - array: mean estimates.
- sigmahat - array: standard deviation estimates.
- muci - array: confidence intervals for mean estimates.
- sigmaci - array: confidence intervals for standard deviation estimates.

## 📄 Description

<b>normfit</b> estimates normal distribution mean and standard deviation parameters.

## 💡 Example

```matlab
x = [-2 -1 0 1 3 5];
[muhat, sigmahat] = normfit(x);
```

## 🔗 See also

[normlike](../../statistics/normlike.md), [normpdf](../../statistics/normpdf.md), [normcdf](../../statistics/normcdf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
