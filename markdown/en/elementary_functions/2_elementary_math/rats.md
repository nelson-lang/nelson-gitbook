# rats

Rational output.

## 📝 Syntax

- S = rats(X)
- S = rats(X, len)

## 📥 Input argument

- X - Input array: real or complex, scalar, vector or matrix (single or double).
- len - Field width: scalar. The default is <b>13</b>.

## 📤 Output argument

- S - Character array of rational approximations.

## 📄 Description


<b>S = rats(X)</b> uses <b>rat</b> to display rational approximations to the elements of <b>X</b> in a fixed width field. 

The string length for each element is <b>len + 1</b> to account for the slash <b>'/'</b> character inserted between the numerator and the denominator. Asterisks are used for elements which can not be printed in the allotted space.

## 💡 Example



```matlab
S = rats(1 ./ (1:5))
```


## 🔗 See also

[rat](../../elementary_functions/2_elementary_math/rat.md), [format](../../display_format/format.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
