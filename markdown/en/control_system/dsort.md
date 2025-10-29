# dsort

Sort discrete-time poles by magnitude.

## 📝 Syntax

- s = dsort(p)
- [s, ndx] = dsort(p)

## 📥 Input argument

- p - p: a vector

## 📤 Output argument

- s - sorted vector by magnitude.

## 📄 Description

<b>dsort</b> arranges the discrete-time poles within the vector <b>p</b> in a descending order based on their magnitude, with unstable poles taking precedence at the beginning of the sorted list.

## 💡 Example

```matlab
p = [-2.410 + 5.573i;
-2.410 - 5.573i;
1.503;
-0.972;
-2.590];
[s, ndx] = dsort(p)


```

## 🔗 See also

[esort](../control_system/esort.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
