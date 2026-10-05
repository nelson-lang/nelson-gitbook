# bootci

Bootstrap confidence interval.

## 📝 Syntax

- ci = bootci(nboot, bootfun, d)
- ci = bootci(nboot, bootfun, d1, ..., dN)
- ci = bootci(nboot, {bootfun, d1, ..., dN}, 'Type', type)
- [ci, bootstat] = bootci(...)

## 📥 Input argument

- nboot - positive integer number of bootstrap samples.
- bootfun - function handle applied to each bootstrap sample.
- d - numeric or logical vector or matrix. Rows are sampled with replacement.
- type - confidence interval type: 'bca', 'normal', 'percentile', or 'cper'. Studentized intervals are reserved for a future implementation.

## 📤 Output argument

- ci - two-row array containing lower and upper confidence interval bounds.
- bootstat - bootstrap statistics, one row per bootstrap sample.

## 📄 Description


<b>bootci</b> draws bootstrap samples using Nelson's random generator and computes confidence intervals for statistics returned by a function handle.

## Used function(s)


    bootstrp
    jackknife
    statset
    rng
  

## 💡 Example

Confidence interval for the mean.

```matlab
rng('default');
ci = bootci(100, @mean, (1:10)', 'Type', 'percentile')
```
