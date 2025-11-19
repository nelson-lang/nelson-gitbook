# clabel

Contour labeling

## 📝 Syntax

- clabel(C,h)
- clabel(C,h,v)
- clabel(C)
- clabel(C,v)
- tl = clabel(...)
- clabel(...,Name,Value)

## 📥 Input argument

- C -

Contour matrix returned by <b>contour</b>, <b>contourf</b>, or<b>contour3</b>. If you pass a contour object <b>h</b>, you may pass<b>[]</b> for <b>C</b>.

- h -

Contour object handle returned by <b>contour</b> /<b>contourf</b> /<b>contour3</b>. When provided, labeling uses information attached to the contour object (levels and contour matrix).

- v -

Vector of contour levels to label. When provided, only these levels receive labels.

## 📤 Output argument

- t -

Text objects created by <b>clabel</b>. The<b>String</b> properties contain the contour values displayed.

- tl -

Text and line objects created when upright markers are used (for<b>clabel(C)</b>-style usage).

## 📄 Description

The <b>clabel</b> function inserts labels into contour plots:

- Provide a contour matrix <b>C</b> and contour object<b>h</b> to label rotated text along contour lines.
- Provide only<b>C</b> to add upright labels and '+' markers at contour locations.
- Pass a vector of levels<b>v</b> to label only specific contour values.
- Use Name,Value pairs to control text appearance (a subset of Text properties, plus<b>LabelSpacing</b>).

## 💡 Examples

Label contour plot levels (basic).

```matlab
figure();
[x,y,z] = peaks;
[C,h] = contour(x,y,z);
clabel(C,h)
```

<img src="clabel_1.svg" align="middle"/>
Label specific contour levels.

```matlab
figure();
[x,y,z] = peaks;
[C,h] = contour(x,y,z);
v = [2,6];
clabel(C,h,v)
```

<img src="clabel_2.svg" align="middle"/>
Set contour label properties with Name,Value pairs.

```matlab
figure();
[x,y,z] = peaks;
[C,h] = contour(x,y,z);
clabel(C,h,'FontSize',15,'Color','red')
```

<img src="clabel_3.svg" align="middle"/>
Label using only the contour matrix (upright labels).

```matlab
figure();
[x,y,z] = peaks;
C = contour(x,y,z);
clabel(C)
```

<img src="clabel_4.svg" align="middle"/>

## 🔗 See also

[contour](../graphics/contour.md), [contourf](../graphics/contourf.md), [contourc](../graphics/contourf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.15.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
