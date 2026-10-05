# ksdensity

Kernel smoothing function estimate.

## 📝 Syntax

- [f, xi] = ksdensity(x)
- [f, xi] = ksdensity(x, pts)
- [f, xi, bw] = ksdensity(...)
- [...] = ksdensity(..., Name, Value)
- ksdensity(...)

## 📄 Description


<b>ksdensity</b> estimates a smoothed distribution function from univariate sample data using a normal kernel. 

Name-value arguments include Bandwidth, Width, Function, NumPoints, Support, Weights, Frequency, Censoring, Kernel, and BoundaryCorrection. Supported function types are pdf, cdf, survivor, cumhazard, and icdf.

## 💡 Example



```matlab
x = [0 1 2];
[f, xi, bw] = ksdensity(x)
```


## 🔗 See also

[ecdf](../../statistics/1_descriptive_statistics_visualization/ecdf.md), [normpdf](../../statistics/2_probability_distributions/normpdf.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
