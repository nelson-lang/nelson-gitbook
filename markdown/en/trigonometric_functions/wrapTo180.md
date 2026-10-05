# wrapTo180

Wrap angle in degrees to [-180, 180].

## 📝 Syntax

- beta = wrapTo180(alpha)

## 📥 Input argument

- alpha - angle in degrees: scalar, vector or matrix.

## 📤 Output argument

- beta - wrapped angle in degrees, in [-180, 180].

## 📄 Description


<b>wrapTo180(alpha)</b> wraps angles in degrees to the interval <b>[-180, 180]</b>. Positive multiples of 180 map to 180, negative multiples map to -180.

## 💡 Example



```matlab
wrapTo180([190 -190 360])
```


## 🔗 See also

[wrapTo360](wrapTo360.md), [wrapToPi](wrapToPi.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
