# worldToIntrinsic

Convert world coordinates to intrinsic image coordinates.

## 📝 Syntax

- [xIntrinsic, yIntrinsic] = worldToIntrinsic(R, xWorld, yWorld)
- [xIntrinsic, yIntrinsic, zIntrinsic] = worldToIntrinsic(R, xWorld, yWorld, zWorld)

## 📥 Input argument

- R - 2-D or 3-D spatial reference structure created by imref2d or imref3d.
- xWorld, yWorld, zWorld - World coordinates. The Z coordinate is used only with 3-D references.

## 📤 Output argument

- xIntrinsic, yIntrinsic, zIntrinsic - Intrinsic coordinates corresponding to the world coordinates.

## 📄 Description

Maps world coordinates to intrinsic coordinates. Coordinates outside the world limits are extrapolated.

## 💡 Example

Convert 2-D world coordinates

```matlab
R = imref2d([2 3], 2, 3);
[xIntrinsic, yIntrinsic] = worldToIntrinsic(R, [2 6], [3 6])
```

## 🔗 See also

[intrinsicToWorld](../../../image_processing/intrinsicToWorld.md), [worldToSubscript](../../../image_processing/worldToSubscript.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
