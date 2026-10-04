# wrapToPi

Wrap angle in radians to [-pi, pi].

## 📝 Syntax

- beta = wrapToPi(alpha)

## 📥 Input argument

- alpha - angle in radians: scalar, vector or matrix.

## 📤 Output argument

- beta - wrapped angle in radians, in [-pi, pi].

## 📄 Description

<b>wrapToPi(alpha)</b> wraps angles in radians to the interval <b>[-pi, pi]</b>. Positive multiples of pi map to pi, negative multiples map to -pi.

## 💡 Example

```matlab
wrapToPi([4 -4])
```

## 🔗 See also

[wrapTo2Pi](wrapTo2Pi.md), [wrapTo180](wrapTo180.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
