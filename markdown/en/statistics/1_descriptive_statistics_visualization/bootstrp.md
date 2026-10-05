# bootstrp

Bootstrap sampling.

## 📝 Syntax

- bootstat = bootstrp(nboot, bootfun, d)
- bootstat = bootstrp(nboot, bootfun, d1, ..., dN)
- [bootstat, bootsam] = bootstrp(...)
- [bootstat, bootsam] = bootstrp(nboot, [], d)

## 📥 Input argument

- nboot - positive integer number of bootstrap samples.
- bootfun - function handle applied to each bootstrap sample. Use an empty value to return sample indices only.
- d - numeric or logical vector or matrix. Rows are sampled with replacement.

## 📤 Output argument

- bootstat - bootstrap statistics, one row per bootstrap sample.
- bootsam - sample indices, one column per bootstrap sample.

## 📄 Description


<b>bootstrp</b> draws bootstrap samples using Nelson's random generator and applies a statistic function to each sample.

## Used function(s)


    bootci
    jackknife
    randsample
    rng
  

## 💡 Example

Bootstrap sample means.

```matlab
rng('default');
[bootstat, bootsam] = bootstrp(20, @mean, (1:10)')
```
