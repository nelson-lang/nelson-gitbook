# ycbcr2rgb

Convert YCbCr color values to RGB color values.

## 📝 Syntax

- RGB = ycbcr2rgb(YCBCR)

## 📥 Input argument

- YCBCR - m-by-n-by-3 YCbCr image, or c-by-3 double colormap with values in the range [0, 1].

## 📤 Output argument

- RGB - RGB image or colormap. uint8, uint16, and single inputs preserve their class; other inputs return double.

## 📄 Description

Convert YCbCr color values to RGB color values. Inputs can be m-by-n-by-3 images or c-by-3 double colormaps with values in the range [0, 1].

## 💡 Example

Convert YCbCr image to RGB

```matlab
RGB=zeros(64,64,3);
[X,Y]=meshgrid(linspace(0,1,64),linspace(0,1,64));
RGB(:,:,1)=X; RGB(:,:,2)=Y; RGB(:,:,3)=0.5;
RGB2=ycbcr2rgb(rgb2ycbcr(RGB));
figure; image(RGB2); title('YCbCr to RGB');
```

<img src="ycbcr2rgb_1.png" align="middle"/>

## 🔗 See also

[rgb2ycbcr](../../../image_processing/rgb2ycbcr.md), [hsv2rgb](../../../image_processing/hsv2rgb.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
