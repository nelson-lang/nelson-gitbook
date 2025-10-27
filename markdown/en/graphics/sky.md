# sky

Sky colormap array.

## 📝 Syntax

- c = sky
- c = sky(m)

## 📥 Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## 📤 Output argument

- c - Sky colormap array.

## 📄 Description

<b>sky</b> returns the colormap with sky colors.

## 💡 Example

```matlab
f = figure();
surf(peaks);
colormap('sky');
```

<img src="sky.svg" align="middle"/>

## 🔗 See also

[colormap](../graphics/colormap.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
