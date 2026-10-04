# edge

Find edges in a grayscale image.

## 📝 Syntax

- BW = edge(I)
- BW = edge(I, method)
- BW = edge(I, method, thresh)
- BW = edge(I, method, thresh, direction)
- BW = edge(I, method, thresh, sigma)
- [BW, thresh] = edge(...)

## 📥 Input argument

- I - Input grayscale or RGB image.
- method - Edge detection method: 'sobel', 'prewitt', 'roberts', 'log', or 'canny'. The default is 'sobel'.
- thresh - Detection threshold. For 'canny', it can be a scalar or a two-element vector.
- direction - Direction used with 'sobel', 'prewitt', and 'roberts': 'horizontal', 'vertical', or 'both'.
- sigma - Positive Gaussian scale used with 'log' and 'canny'.

## 📤 Output argument

- BW - Logical image whose true pixels mark detected edges.
- thresh - Threshold value used by the detector.

## 📄 Description

Find edges in a grayscale image. Supported methods are sobel, prewitt, roberts, log and canny. The sobel, prewitt and roberts methods accept horizontal, vertical or both as direction. The log and canny methods accept a positive scalar sigma. The canny threshold can be a scalar or a two-element vector.

## 💡 Example

Detect edges

```matlab
[X,Y]=meshgrid(linspace(-1,1,96),linspace(-1,1,64));
I=exp(-4*(X.^2+Y.^2));
BW=edge(I,'sobel');
figure; subplot(1,2,1); imagesc(I); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(BW); g=linspace(0,1,64)'; colormap([g g g]); title('Edges');
```

<img src="edge_1.png" align="middle"/>

## 🔗 See also

[imfilter](../../../image_processing/imfilter.md), [fspecial](../../../image_processing/fspecial.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
