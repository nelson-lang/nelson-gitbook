# turbo

Turbo colormap array.

## 📝 Syntax

- c = turbo
- c = turbo(m)

## 📥 Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## 📤 Output argument

- c - Turbo colormap array.

## 📄 Description

<b>turbo</b> returns the colormap with turbo colors.

## 💡 Example

```matlab
f = figure();
surf(peaks);
colormap('turbo');
```

<img src="turbo.svg" align="middle"/>

## 🔗 See also

[colormap](../graphics/colormap.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
