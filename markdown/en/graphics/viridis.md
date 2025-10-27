# viridis

Viridis colormap array.

## 📝 Syntax

- c = viridis
- c = viridis(m)

## 📥 Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## 📤 Output argument

- c - Viridis colormap array.

## 📄 Description

<b>viridis</b> returns the colormap with viridis colors.

## 📚 Bibliography

Color map created by Stéfan van der Walt and Nathaniel Smith

## 💡 Example

```matlab
f = figure();
surf(peaks);
view(2);
colormap('viridis');
```

<img src="viridis.svg" align="middle"/>

## 🔗 See also

[colormap](../graphics/colormap.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
