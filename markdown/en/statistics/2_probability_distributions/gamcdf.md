# gamcdf

Gamma cumulative distribution function

## 📝 Syntax

- p = gamcdf(x, a)
- p = gamcdf(x, a, b)
- p = gamcdf(x, a, b, 'upper')

## 📥 Input argument

- x - real numeric array.
- a - positive shape parameter.
- b - positive scale parameter, default 1.

## 📤 Output argument

- p - cumulative probabilities or upper-tail probabilities.

## 📄 Description

<b>gamcdf</b> computes lower-tail gamma probabilities by default and upper-tail probabilities with <b>'upper'</b>.

## 💡 Example

```matlab
x = [0 0.5 1 2 5];
p = gamcdf(x, 2, 3);
q = gamcdf(x, 2, 3, 'upper');
```

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
