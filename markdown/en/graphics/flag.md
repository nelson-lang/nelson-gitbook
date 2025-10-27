# flag

Flag colormap array.

## 📝 Syntax

- c = flag
- c = flag(m)

## 📥 Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## 📤 Output argument

- c - Flag colormap array.

## 📄 Description

<b>flag</b> returns the colormap with flag colors.

## 💡 Example

```matlab
f = figure();
surf(peaks);
colormap('flag');
```

<img src="flag.svg" align="middle"/>

## 🔗 See also

[colormap](../graphics/colormap.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
