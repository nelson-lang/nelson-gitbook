# worldToSubscript

Convert world coordinates to image subscripts.

## 📝 Syntax

- [row, column] = worldToSubscript(R, xWorld, yWorld)
- [row, column, plane] = worldToSubscript(R, xWorld, yWorld, zWorld)

## 📥 Input argument

- R - 2-D or 3-D spatial reference structure created by imref2d or imref3d.
- xWorld, yWorld, zWorld - World coordinates. The Z coordinate is used only with 3-D references.

## 📤 Output argument

- row, column, plane - Nearest image subscripts. Points outside the referenced image return NaN subscripts.

## 📄 Description


Converts world coordinates to nearest row, column, and optional plane subscripts.

## 💡 Example

Convert world coordinates to row and column subscripts

```matlab
R = imref2d([2 3], 2, 3);
[row, column] = worldToSubscript(R, [2 8], [3 6])
```


## 🔗 See also

[worldToIntrinsic](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/worldToIntrinsic.md), [sizesMatch](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/sizesMatch.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
