# sin

Computes the sine in radians for each element of x.

## 📝 Syntax

- res = sin(x)

## 📥 Input argument

- x - a numeric value

## 📤 Output argument

- res - a numeric value

## 📄 Description


<b>sin</b> computes the sine in radians for each element of <b>x</b>. 

The sine function is defined as: 
$$\sin(x) = \frac{e^{ix} - e^{-ix}}{2i}$$
 

For real arguments, it represents the y-coordinate on the unit circle.

## 💡 Example



```matlab
A = eye(3, 3);
res = sin(A)
```


## 🔗 See also

[asin](../trigonometric_functions/asin.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
