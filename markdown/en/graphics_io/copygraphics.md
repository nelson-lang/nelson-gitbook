# copygraphics

Copy plot to clipboard.

## 📝 Syntax

- copygraphics(fig)

## 📥 Input argument

- fig - figure object.

## 📄 Description


<b>copygraphics</b> copy figure to clipboard. 

On the desktop, the rendered RGBA image is sent to the native clipboard by the optional desktop adapter. In web mode, the same rendering is encoded as an RGBA PNG and sent through <b>clipboard.image</b> to the browser. Browser clipboard access requires a secure context and may require permission or a user gesture. When the automatic request is rejected, a visible <b>Copy image</b> action is displayed so the operation can be retried.

## 💡 Example



```matlab
x = -2:0.25:2;
y = x;
[X,Y] = meshgrid(x);
F = X.*exp(-X.^2-Y.^2);
surf(X,Y,F);
copygraphics(gcf());

```


## 🔗 See also

[gcf](../graphics/2_graphics_objects/1_object_management/gcf.md), [saveas](../graphics_io/saveas.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 2.0.0   | browser image clipboard support added |

<!--
## 👤 Author

Allan CORNET
-->
