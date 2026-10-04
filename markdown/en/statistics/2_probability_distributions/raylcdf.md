# raylcdf

Rayleigh cumulative distribution function

## 📝 Syntax

- p = raylcdf(x, b)
- p = raylcdf(x, b, 'upper')

## 📥 Input argument

- x - real scalar or array: values.
- b - positive scalar or array: scale parameter.

## 📤 Output argument

- p - array: cumulative probabilities.

## 📄 Description

<b>raylcdf</b> evaluates Rayleigh cumulative probabilities element by element.

## 💡 Example

```matlab
p = raylcdf([0 2 4], 2);
q = raylcdf([0 2 4], 2, 'upper');
```

## 🔗 See also

[raylpdf](../../statistics/raylpdf.md), [raylinv](../../statistics/raylinv.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
