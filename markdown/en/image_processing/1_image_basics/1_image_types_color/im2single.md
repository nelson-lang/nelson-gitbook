# im2single

Convert image to single precision.

## 📝 Syntax

- J = im2single(I)
- J = im2single(I, 'indexed')

## 📥 Input argument

- I - Input image.
- 'indexed' - Optional mode for indexed images. uint8 and uint16 values are converted to one-based single indices.

## 📤 Output argument

- J - Image converted to single precision.

## 📄 Description

Convert image to single precision.

For indexed images, uint8 and uint16 inputs are offset by one in the single output.

## 💡 Example

Convert uint8 array to single precision

```matlab
I=reshape(uint8(linspace(1,255,25)),[5 5]);
J=im2single(I);
figure; imagesc(J); g=linspace(0,1,64)'; colormap([g g g]); title('single image');
```

<img src="im2single_1.png" align="middle"/>

## 🔗 See also

[im2double](../../../image_processing/im2double.md), [im2uint8](../../../image_processing/im2uint8.md), [im2uint16](../../../image_processing/im2uint16.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
