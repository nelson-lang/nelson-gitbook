# groot

graphic root object.

## 📝 Syntax

- g = groot()

## 📤 Output argument

- g - a graphics object: root object.

## 📄 Description

<b>groot</b> returns graphic root object.

Properties:

<b>Children</b>: Array of available figure objects.

<b>CurrentFigure</b>: Current figure graphics object.

<b>Parent</b>: empty array (No parent)

<b>PointerLocation</b>: Current location of pointer.

<b>ScreenDepth</b>: Number of bits that define each pixel color.

<b>ScreenSize</b>: Size of primary display (vector).

<b>Tag</b>: Object identifier: string scalar, character vector, ' ' (default).

<b>Type</b>: Type 'root'.

<b>Units</b>: 'pixels'.

<b>UserData</b>: User data: array or [] (default).

## 💡 Example

```matlab
g = groot()
g.ScreenDepth
```

## 🔗 See also

[figure](../graphics/figure.md), [gcf](../graphics/gcf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
