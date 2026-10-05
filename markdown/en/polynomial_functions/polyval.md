# polyval

Polynomial evaluation.

## 📝 Syntax

- y = polyval(p, x)
- y = polyval(p, x, S)
- y = polyval(p, x, S, mu)
- [y, delta] = polyval(p, x, S)
- [y, delta] = polyval(p, x, S, mu)

## 📥 Input argument

- p - vector: polynomial coefficients
- x - query points
- S - structure: error estimation structure, the second output of polyfit (fields R, df and normr). Required to compute delta.
- mu - two element vector: centering and scaling, the third output of polyfit. The polynomial is evaluated at (x - mu(1)) / mu(2).

## 📤 Output argument

- y - vector: Function values
- delta - vector: standard error estimate for each value, computed from S.

## 📄 Description


<b>polyval</b> evaluates polynomial at several points. 

When <b>mu</b> is provided, the polynomial is evaluated at the centered and scaled points (x - mu(1)) / mu(2), matching a fit produced by <b>polyfit</b> with three outputs. 

When the second output <b>delta</b> is requested, <b>S</b> must be supplied and is used to return an estimate of the standard error of the prediction.

## 💡 Example



```matlab

p = [3 2 1];
x = [5 7 9];
R = polyval(p, x)
```


## 🔗 See also

[polyvalm](../polynomial_functions/polyvalm.md), [polyfit](../polynomial_functions/polyfit.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
