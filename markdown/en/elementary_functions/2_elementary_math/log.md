# log

Natural logarithm.

## 📝 Syntax

- R = log(M)

## 📥 Input argument

- M - a variable

## 📤 Output argument

- R - result of log: Natural logarithm.

## 📄 Description


<b>log</b> computes the natural logarithm. 

For real positive numbers: 
$$\ln(x)$$
 

For complex numbers <b>z</b>: 
$$\ln(z) = \ln|z| + i\arg(z)$$
 

where 
$$|z|$$
 

is the modulus and 
$$\arg(z)$$
 

is the argument of <b>z</b>.

## 💡 Example



```matlab
x = [1+i,-i;i,2i];
r = log(x)
```


## 🔗 See also

[exp](../../elementary_functions/2_elementary_math/exp.md), [abs](../../elementary_functions/2_elementary_math/abs.md), [angle](../../elementary_functions/3_complex_numbers/angle.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
