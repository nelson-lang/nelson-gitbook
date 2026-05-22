# gray

Gray colormap array.

## 📝 Syntax

- c = gray
- c = gray(m)

## 📥 Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## 📤 Output argument

- c - Gray colormap array.

## 📄 Description

<b>gray</b> returns the colormap with gray colors.

## 💡 Example

```matlab
f = figure();
surf(peaks);
colormap('gray');
```

<img src="gray.svg" align="middle"/>

## 🔗 See also

[colormap](../../graphics/colormap.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
