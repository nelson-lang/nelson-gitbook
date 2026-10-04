# transformPointsInverse

Apply an inverse geometric transformation to points.

## 📝 Syntax

- [u, v] = transformPointsInverse(tform, x, y)
- U = transformPointsInverse(tform, X)
- [u, v, w] = transformPointsInverse(tform, x, y, z)

## 📥 Input argument

- tform - Geometric transformation structure created by affine2d, affine3d or projective2d.
- x, y, z - Coordinate arrays of identical size. Supply x and y for a 2-D transformation, or x, y and z for a 3-D transformation.
- X - Packed point matrix with one column per dimension: N-by-2 for a 2-D transformation, N-by-3 for a 3-D transformation.

## 📤 Output argument

- u, v, w - Transformed coordinate arrays, same size as the corresponding inputs.
- U - Packed matrix of transformed points, same size as X.

## 📄 Description

Apply the inverse of the geometric transformation stored in <b>tform</b> to a set of points, using the row-vector convention <b>[u ... 1] = [x ... 1] \* inv(tform.T)</b>. For a projective transformation the result is normalized by its homogeneous coordinate.

Points can be given either as separate coordinate arrays of equal size, or as a single packed matrix with one column per dimension. It is the inverse operation of <b>transformPointsForward</b>.

## 💡 Example

Forward then inverse is a round trip

```matlab
tform = affine2d([cosd(30) sind(30) 0; -sind(30) cosd(30) 0; 0 0 1]);
[x, y] = transformPointsForward(tform, 1.5, -0.5);
[u, v] = transformPointsInverse(tform, x, y)
```

## 🔗 See also

[transformPointsForward](../../../image_processing/transformPointsForward.md), [affine2d](../../../image_processing/affine2d.md), [affine3d](../../../image_processing/affine3d.md), [projective2d](../../../image_processing/projective2d.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
