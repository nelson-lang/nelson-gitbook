# imclose

Close an image by dilation followed by erosion.

## 📝 Syntax

- J = imclose(I, SE)

## 📥 Input argument

- I - Input binary or grayscale image.
- SE - Structuring element structure or logical neighborhood.

## 📤 Output argument

- J - Closed image.

## 📄 Description


Close an image by dilation followed by erosion.

## 💡 Example

Close a binary image

```matlab
BW=false(64,64); BW(20:44,20:44)=true; BW(32,32)=false;
J=imclose(BW,strel('disk',3));
figure; subplot(1,2,1); imagesc(BW); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(J); g=linspace(0,1,64)'; colormap([g g g]); title('Closed');
```
<img src="imclose_1.png" align="middle"/>


## 🔗 See also

[imopen](../../../image_processing/2_image_analysis/4_morphology/imopen.md), [imdilate](../../../image_processing/2_image_analysis/4_morphology/imdilate.md), [imerode](../../../image_processing/2_image_analysis/4_morphology/imerode.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
