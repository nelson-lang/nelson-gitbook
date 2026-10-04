# imfill

Fill holes in binary images.

## 📝 Syntax

- BW2 = imfill(BW)
- BW2 = imfill(BW, 'holes')
- BW2 = imfill(BW, conn, 'holes')

## 📥 Input argument

- BW - Input binary image. Nonzero values are treated as true.
- conn - Connectivity, either 4 or 8.
- 'holes' - Fill holes in foreground objects.

## 📤 Output argument

- BW2 - Logical image with holes filled.

## 📄 Description

Fill holes in a 2-D binary image. Supported connectivities are 4 and 8.

## 💡 Example

Fill a hole in a binary object

```matlab
BW=false(64,64); BW(12:52,12:52)=true; BW(24:40,24:40)=false;
BW2=imfill(BW,'holes');
figure; subplot(1,2,1); imagesc(BW); title('Input');
subplot(1,2,2); imagesc(BW2); title('Filled');
```

<img src="imfill_1.png" align="middle"/>

## 🔗 See also

[imclose](../../../image_processing/imclose.md), [imreconstruct](../../../image_processing/imreconstruct.md), [imclearborder](../../../image_processing/imclearborder.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
