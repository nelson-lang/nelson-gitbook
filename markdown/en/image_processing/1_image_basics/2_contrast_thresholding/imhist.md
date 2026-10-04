# imhist

Compute image histogram counts.

## 📝 Syntax

- counts = imhist(I)
- [counts, binLocations] = imhist(I)
- [counts, binLocations] = imhist(I, n)

## 📥 Input argument

- I - Input intensity or logical image.
- n - Positive integer number of histogram bins.

## 📤 Output argument

- counts - Histogram counts as a column vector.
- binLocations - Bin locations on the native image scale.

## 📄 Description

Compute image histogram counts. Bin locations use the native scale for integer images and the range [0, 1] for floating-point and logical images.

## 💡 Example

Display an image histogram

```matlab
I=repmat(linspace(0,1,96),64,1);
[counts,bins]=imhist(I,32);
figure; bar(bins,counts); title('Histogram');
```

<img src="imhist_1.png" align="middle"/>

## 🔗 See also

[imadjust](../../../image_processing/imadjust.md), [graythresh](../../../image_processing/graythresh.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
