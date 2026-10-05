# imtophat

Top-hat filtering of an image.

## 📝 Syntax

- J = imtophat(I, SE)

## 📥 Input argument

- I - Input grayscale image.
- SE - Structuring element structure or logical neighborhood.

## 📤 Output argument

- J - Top-hat filtered image.

## 📄 Description


Top-hat filtering of an image.

## 💡 Example

Apply top-hat filtering

```matlab
I=zeros(64,64); I(20:44,20:44)=0.4; I(30:34,30:34)=1;
J=imtophat(I,strel('disk',5));
figure; subplot(1,2,1); imagesc(I); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(J); g=linspace(0,1,64)'; colormap([g g g]); title('Top-hat');
```
<img src="imtophat_1.png" align="middle"/>


## 🔗 See also

[imbothat](../../../image_processing/2_image_analysis/4_morphology/imbothat.md), [imopen](../../../image_processing/2_image_analysis/4_morphology/imopen.md), [strel](../../../image_processing/2_image_analysis/4_morphology/strel.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
