# jet

Jet colormap array.

## 📝 Syntax

- c = jet
- c = jet(m)

## 📥 Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## 📤 Output argument

- c - Jet colormap array.

## 📄 Description

<b>jet</b> returns the colormap with jet colors.

## 💡 Example

```matlab
f = figure();
surf(peaks);
colormap('jet');
```

<img src="jet.svg" align="middle"/>

## 🔗 See also

[colormap](../graphics/colormap.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
