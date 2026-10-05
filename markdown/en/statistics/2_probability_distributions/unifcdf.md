# unifcdf

Continuous uniform cumulative distribution function

## 📝 Syntax

- p = unifcdf(x)
- p = unifcdf(x, a, b)
- p = unifcdf(..., 'upper')

## 📥 Input argument

- x - real numeric array.
- a - lower endpoint, default 0.
- b - upper endpoint, default 1.

## 📤 Output argument

- p - cumulative probabilities or upper-tail probabilities.

## 📄 Description


<b>unifcdf</b> computes lower-tail continuous uniform probabilities by default and upper-tail probabilities with <b>'upper'</b>.

## 💡 Example



```matlab
x = 0:0.25:1;
p = unifcdf(x);
q = unifcdf(x, 'upper');
```


## 🔗 See also

[unifpdf](../../statistics/2_probability_distributions/unifpdf.md), [unifinv](../../statistics/2_probability_distributions/unifinv.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
