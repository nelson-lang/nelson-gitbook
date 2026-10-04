# bwboundaries

Find boundary pixels of binary regions.

## 📝 Syntax

- B = bwboundaries(BW)
- B = bwboundaries(BW, conn)
- [B, L, n] = bwboundaries(BW, conn, option)

## 📥 Input argument

- BW - Input binary image. Nonzero values are treated as true.
- conn - Connectivity, either 4 or 8.
- option - Boundary option: 'holes' or 'noholes'.

## 📤 Output argument

- B - Cell array of boundary coordinate matrices.
- L - Label matrix for foreground components.
- n - Number of foreground components.

## 📄 Description

Find perimeter coordinates of connected binary regions. Supported connectivities are 4 and 8. The option 'holes' appends boundaries of filled holes.

## 💡 Example

Display boundaries of binary regions

```matlab
BW=false(64,64); BW(10:28,10:30)=true; BW(36:54,38:56)=true;
B=bwboundaries(BW);
figure; imagesc(BW); hold on;
for k=1:length(B), plot(B{k}(:,2), B{k}(:,1), 'r.'); end
title('Boundaries');
```

<img src="bwboundaries_1.png" align="middle"/>

## 🔗 See also

[bwtraceboundary](../../../image_processing/bwtraceboundary.md), [bwperim](../../../image_processing/bwperim.md), [bwlabel](../../../image_processing/bwlabel.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
