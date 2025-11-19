# im2double

Convert image to double precision.

## 📝 Syntax

- IM = im2double(I)
- IM = im2double(I,'indexed')

## 📥 Input argument

- I - Input image: scalar, vector, matrix or multidimensional array with type single, double, int16, uint8, uint16 or logical.

## 📤 Output argument

- IM - The converted image is returned as a numeric array with the same dimensions as the input image I with type double.

## 📄 Description

<b>IM = im2double(I)</b> converts the input image I to double precision format. The input image IM can be a grayscale, truecolor, or binary image. When converting,<b>im2double</b> rescales the pixel values from their original integer format to a floating-point range of [0, 1].

For an indexed image,<b>IM = im2double(I, 'indexed')</b> converts the image I to double precision as well, but with an added offset of 1 to the pixel values during the conversion from integer types.

## 💡 Example

```matlab
I = reshape(uint8(linspace(1,255,25)),[5 5]);
IM1 = im2double(I)
IM2 = im2double(I, 'indexed')

```

## 🔗 See also

[double](../double/double.md), [imread](../graphics_io/imread.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
