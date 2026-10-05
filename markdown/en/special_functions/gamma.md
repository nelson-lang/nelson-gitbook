# gamma

Gamma special function

## 📝 Syntax

- R = gamma(M)

## 📥 Input argument

- M - a real single or real double matrix.

## 📤 Output argument

- R - result of gamma function.

## 📄 Description


<b>gamma</b> computes the gamma function. 

The gamma function is defined by the integral: 
$$\Gamma(z) = \int_0^{\infty} t^{z-1} e^{-t} \, dt$$
 

for 
$$\text{Re}(z) >0$$
 

The gamma function extends the factorial function to real and complex numbers: 
$$\Gamma(n) = (n-1)!$$
 

for positive integers 
$$n$$
 

Key properties include: 

- 
$$\Gamma(z+1) = z\Gamma(z)$$
(recurrence relation) 
- 
$$\Gamma(1/2) = \sqrt{\pi}$$


## 💡 Example



```matlab
R = gamma([-pi:0.1:pi])
```


## 🔗 See also

[gammaln](../special_functions/gammaln.md), [factorial](../elementary_functions/2_elementary_math/factorial.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
