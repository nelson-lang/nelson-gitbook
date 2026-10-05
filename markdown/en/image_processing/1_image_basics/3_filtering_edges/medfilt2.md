# medfilt2

Apply 2-D median filtering.

## 📝 Syntax

- B = medfilt2(A)
- B = medfilt2(A, [m n])
- B = medfilt2(A, [m n], padopt)

## 📥 Input argument

- A - 2-D numeric or logical image.
- [m n] - Positive integer scalar or two-element neighborhood size. The default value is [3 3].
- padopt - Padding option: zeros, indexed, symmetric or replicate.

## 📤 Output argument

- B - Median-filtered image, preserving the input class.

## 📄 Description


Apply 2-D median filtering. The default padding uses zeros. Supported padding options include zeros, indexed, symmetric and replicate. Text options are case-insensitive.

## 💡 Example

Apply median filtering

```matlab
I=peaks(64);
I(16:4:48,16:4:48)=8;
J=medfilt2(I,[3 3]);
figure; subplot(1,2,1); imagesc(I); title('Input');
subplot(1,2,2); imagesc(J); title('Median filtered');
```
<img src="medfilt2_1.png" align="middle"/>


## 🔗 See also

[imfilter](../../../image_processing/1_image_basics/3_filtering_edges/imfilter.md), [imgaussfilt](../../../image_processing/1_image_basics/3_filtering_edges/imgaussfilt.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
