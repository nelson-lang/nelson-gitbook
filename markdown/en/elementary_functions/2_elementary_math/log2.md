# log2

dissect floating-point numbers into base 2 exponent and mantissa.

## 📝 Syntax

- R = log2(M)
- [F, E] = log2(M)

## 📥 Input argument

- M - a variable: a matrix

## 📤 Output argument

- R - result of log2: computes the base 2 logarithm of the elements of X.
- F - Mantissa values that satisfy this equation: M= F.\*2.^E
- E - Exponent values that satisfy this equation: M= F.\*2.^E

## 📄 Description


<b>log2</b> dissects several numbers into the exponent and mantissa. 

[F, E] = log2(M), any zeros in M produce F = 0 and E = 0. 

Input values of Inf, -Inf, or NaN are returned unchanged in F with a corresponding exponent of E = 0.

## Used function(s)

std::frexp and std::logb C++ functions

## 💡 Example



```matlab
x = [1+i,-i;i,2i];
R = log2(x)
[F, E] = log2(x)
```


## 🔗 See also

[log](../../elementary_functions/2_elementary_math/log.md), [log10](../../elementary_functions/2_elementary_math/log10.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
