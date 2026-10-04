# bwperim

Find perimeter pixels of binary objects.

## 📝 Syntax

- BW2 = bwperim(BW)
- BW2 = bwperim(BW, conn)

## 📥 Input argument

- BW - Input binary image. Nonzero values are treated as true.
- conn - Connectivity, either 4 or 8.

## 📤 Output argument

- BW2 - Logical image containing perimeter pixels.

## 📄 Description

Find perimeter pixels of binary objects. Supported connectivities are 4 and 8.

## 💡 Example

Find object perimeter

```matlab
BW=false(64,64); BW(20:44,20:44)=true;
P=bwperim(BW);
figure; imagesc(P); g=linspace(0,1,64)'; colormap([g g g]); title('Perimeter');
```

<img src="bwperim_1.png" align="middle"/>

## 🔗 See also

[bwmorph](../../../image_processing/bwmorph.md), [bwboundaries](../../../image_processing/bwboundaries.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
