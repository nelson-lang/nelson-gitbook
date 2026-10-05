# wrapTo2Pi

Wrap angle in radians to [0, 2\*pi].

## 📝 Syntax

- beta = wrapTo2Pi(alpha)

## 📥 Input argument

- alpha - angle in radians: scalar, vector or matrix.

## 📤 Output argument

- beta - wrapped angle in radians, in [0, 2\*pi].

## 📄 Description


<b>wrapTo2Pi(alpha)</b> wraps angles in radians to the interval <b>[0, 2\*pi]</b>. Positive multiples of 2\*pi map to 2\*pi, and zero maps to 0.

## 💡 Example



```matlab
wrapTo2Pi([-1 2*pi])
```


## 🔗 See also

[wrapToPi](wrapToPi.md), [wrapTo360](wrapTo360.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
