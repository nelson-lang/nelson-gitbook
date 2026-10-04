# transformPointsForward

Apply a forward geometric transformation to points.

## 📝 Syntax

- [x, y] = transformPointsForward(tform, u, v)
- X = transformPointsForward(tform, U)
- [x, y, z] = transformPointsForward(tform, u, v, w)

## 📥 Input argument

- tform - Geometric transformation structure created by affine2d, affine3d or projective2d.
- u, v, w - Coordinate arrays of identical size. Supply u and v for a 2-D transformation, or u, v and w for a 3-D transformation.
- U - Packed point matrix with one column per dimension: N-by-2 for a 2-D transformation, N-by-3 for a 3-D transformation.

## 📤 Output argument

- x, y, z - Transformed coordinate arrays, same size as the corresponding inputs.
- X - Packed matrix of transformed points, same size as U.

## 📄 Description

Apply the forward geometric transformation stored in <b>tform</b> to a set of points, using the row-vector convention <b>[x ... 1] = [u ... 1] \* tform.T</b>. For a projective transformation the result is normalized by its homogeneous coordinate.

Points can be given either as separate coordinate arrays of equal size, or as a single packed matrix with one column per dimension.

## 💡 Example

Rotate points by 30 degrees

```matlab
tform = affine2d([cosd(30) sind(30) 0; -sind(30) cosd(30) 0; 0 0 1]);
[x, y] = transformPointsForward(tform, 1, 0)
```

## 🔗 See also

[transformPointsInverse](../../../image_processing/transformPointsInverse.md), [affine2d](../../../image_processing/affine2d.md), [affine3d](../../../image_processing/affine3d.md), [projective2d](../../../image_processing/projective2d.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
