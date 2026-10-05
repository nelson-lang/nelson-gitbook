# normpdf

Normal probability density function

## 📝 Syntax

- y = normpdf(x)
- y = normpdf(x, mu)
- y = normpdf(x, mu, sigma)

## 📥 Input argument

- x - scalar value or array: Values at which to evaluate pdf.
- mu - scalar value, 0 (default) or array: Mean.
- sigma - positive scalar value, 1 (default) or array of positive values: Standard deviation.

## 📤 Output argument

- y - scalar value or array: pdf values.

## 📄 Description


<b>normpdf</b> computes the probability density function of the normal (Gaussian) distribution. 

The general formula for the normal distribution PDF is: 
$$f(x|\mu,\sigma^2) = \frac{1}{\sigma\sqrt{2\pi}} e^{-\frac{(x-\mu)^2}{2\sigma^2}}$$
 

where 
$$\mu$$
 

is the mean and 
$$\sigma^2$$
 

is the variance. 

For the standard normal distribution ( 
$$\mu = 0, \sigma = 1$$
 

): 
$$\phi(x) = \frac{1}{\sqrt{2\pi}} e^{-\frac{x^2}{2}}$$


## Used function(s)


    exp
    sqrt
  

## 📚 Bibliography

Evans, M., N. Hastings, and B. Peacock. Statistical Distributions. 2nd ed. Hoboken, NJ: John Wiley and Sons, Inc., 1993.

## 💡 Example



```matlab
x = [-0.2, -0.1, 0, 0.1, 0.2];
R = normpdf(x);

x = [-0.2, -0.1, 0, 0.1, 0.2];
R = normpdf(x, 2, 1);

R = normpdf(0, [-0.2, -0.1, 0, 0.1, 0.2], 1);
```


## 🔗 See also

[mean](../../statistics/1_descriptive_statistics_visualization/mean.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
