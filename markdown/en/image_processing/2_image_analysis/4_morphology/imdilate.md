# imdilate

Dilate a binary or grayscale image or volume.

## 📝 Syntax

- J = imdilate(I, SE)

## 📥 Input argument

- I - Input binary or grayscale image, or 3-D volume.
- SE - Structuring element structure or logical neighborhood.

## 📤 Output argument

- J - Dilated image or volume.

## 📄 Description


Dilate a binary or grayscale image. With a 3-D structuring element, imdilate dilates a 3-D volume.

## 💡 Example

Dilate a binary text-like image

```matlab
BW=false(7,15); BW(2:6,3:4)=true; BW(2:6,8:9)=true; BW(4,5:7)=true;
J=imdilate(BW,strel('square',3));
figure; subplot(1,2,1); imagesc(BW); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(J); g=linspace(0,1,64)'; colormap([g g g]); title('Dilated');
```
<img src="imdilate_1.png" align="middle"/>


## 🔗 See also

[imerode](../../../image_processing/2_image_analysis/4_morphology/imerode.md), [imclose](../../../image_processing/2_image_analysis/4_morphology/imclose.md), [imopen](../../../image_processing/2_image_analysis/4_morphology/imopen.md), [strel](../../../image_processing/2_image_analysis/4_morphology/strel.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
