# degtorad

Convert angle from degrees to radians.

## 📝 Syntax

- r = degtorad(d)

## 📥 Input argument

- d - a numeric value (double or single)

## 📤 Output argument

- r - a numeric value

## 📄 Description
<b>r = degtorad(d)</b> converts angle units from degrees to radians for each element of <b>d</b>.

## 💡 Example



```matlab
D = 64.7;
R = degtorad(D);
radEarth = 6371;
dist = radEarth * R
```


## 🔗 See also

[deg2rad](../trigonometric_functions/deg2rad.md), [radtodeg](../trigonometric_functions/radtodeg.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
