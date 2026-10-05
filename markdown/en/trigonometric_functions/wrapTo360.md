# wrapTo360

Wrap angle in degrees to [0, 360].

## 📝 Syntax

- beta = wrapTo360(alpha)

## 📥 Input argument

- alpha - angle in degrees: scalar, vector or matrix.

## 📤 Output argument

- beta - wrapped angle in degrees, in [0, 360].

## 📄 Description


<b>wrapTo360(alpha)</b> wraps angles in degrees to the interval <b>[0, 360]</b>. Positive multiples of 360 map to 360, and zero maps to 0.

## 💡 Example



```matlab
wrapTo360([-10 370 720])
```


## 🔗 See also

[wrapTo180](wrapTo180.md), [wrapTo2Pi](wrapTo2Pi.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
