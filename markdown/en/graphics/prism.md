# prism

Prism colormap array.

## 📝 Syntax

- c = prism
- c = prism(m)

## 📥 Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## 📤 Output argument

- c - Prism colormap array.

## 📄 Description

<b>prism</b> returns the colormap with prism colors.

## 💡 Example

```matlab
f = figure();
surf(peaks);
colormap('prism');
```

<img src="prism.svg" align="middle"/>

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
