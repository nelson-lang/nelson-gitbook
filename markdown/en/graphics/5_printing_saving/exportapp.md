# exportapp

Save figure including UI components as an image file.

## 📝 Syntax

- exportapp(fig, filename)

## 📥 Input argument

- fig - figure object: figure or UI figure to capture.
- filename - a character vector or string scalar: destination image file.

## 📄 Description


<b>exportapp(fig, filename)</b> captures the figure <b>fig</b>, including all of its UI components, and writes it to the image file <b>filename</b>. 

The output file format is determined by the extension of <b>filename</b> (for example <b>.png</b>, <b>.jpg</b>, or <b>.tif</b>). 

Unlike <b>saveas</b>, <b>exportapp</b> is intended to export figures created with <b>uifigure</b> that contain UI components such as buttons, sliders, and tables.

## 💡 Example



```matlab
f = uifigure('Position', [100 100 300 200]);
b = uibutton(f, 'Text', 'Export me');
exportapp(f, [tempdir(), 'exportapp_example.png']);
img = imread([tempdir(), 'exportapp_example.png']);
figure();
imshow(img)

```


## 🔗 See also

[getframe](../../graphics/4_images/getframe.md), [saveas](../../graphics_io/saveas.md), [uifigure](../../gui/uifigure.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
