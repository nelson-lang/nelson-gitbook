# raylinv

Rayleigh inverse cumulative distribution function

## 📝 Syntax

- x = raylinv(p, b)

## 📥 Input argument

- p - probabilities in [0, 1].
- b - positive scalar or array: scale parameter.

## 📤 Output argument

- x - array: inverse cumulative values.

## 📄 Description


<b>raylinv</b> evaluates Rayleigh inverse cumulative values element by element.

## 💡 Example



```matlab
p = [0 0.3934693402873666 0.8646647167633873];
x = raylinv(p, 2);
```


## 🔗 See also

[raylpdf](../../statistics/2_probability_distributions/raylpdf.md), [raylcdf](../../statistics/2_probability_distributions/raylcdf.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
