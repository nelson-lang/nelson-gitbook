# kstest

One-sample Kolmogorov-Smirnov test

## 📝 Syntax

- h = kstest(x)
- h = kstest(x, 'CDF', cdf)
- h = kstest(x, 'CDF', cdfFunction)
- [h, p, ksstat, cv] = kstest(..., 'Alpha', alpha, 'Tail', tail)

## 📥 Input argument

- x - real vector: sample data.
- cdf - two-column matrix defining x values and cumulative probabilities, function handle evaluated at the sorted sample values, or object with a cdf method.
- cdfFunction - function handle returning cumulative probabilities for each input sample value.
- alpha - scalar in (0,1), 0.05 by default: significance level.
- tail - 'unequal', 'larger', or 'smaller'.

## 📤 Output argument

- h - logical scalar: test decision.
- p - p-value.
- ksstat - test statistic.
- cv - critical value.

## 📄 Description


<b>kstest</b> compares the empirical distribution of <b>x</b> with the standard normal distribution or a user-supplied cumulative distribution. 

NaN sample values are omitted before sorting and computing the empirical distribution.

## 💡 Example



```matlab
x = [-1.2 -0.4 0.1 0.3 0.8];
[h, p, ksstat, cv] = kstest(x);
cdf = [-2 0; -1 0.2; 0 0.5; 1 0.8; 2 1];
h2 = kstest(x, 'CDF', cdf);
h3 = kstest([0 1 2], 'CDF', @(z) 0.2 + 0.3 .* z);
```


## 🔗 See also

[normcdf](../../statistics/2_probability_distributions/normcdf.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
