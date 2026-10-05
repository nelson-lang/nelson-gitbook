# sign

Find the sign function of a number.

## 📝 Syntax

- R = sign(M)

## 📥 Input argument

- M - a variable

## 📤 Output argument

- R - result of sign.

## 📄 Description


<b>sign</b> find the sign function of a number. 

-1 if the corresponding element of M is less than 0. 

0 if the corresponding element of M equals 0. 

1 if the corresponding element of M is greater than 0. 

If input argument is a complex number, <b>sign</b> computes<b>M ./ abs(M)</b>.

## 💡 Example



```matlab
V = [-1 0 15 NaN Inf];
sign(V)
```


## 🔗 See also

[conj](../../elementary_functions/3_complex_numbers/conj.md), [abs](../../elementary_functions/2_elementary_math/abs.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
