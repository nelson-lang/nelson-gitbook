# affine3d

Create a 3-D affine transformation structure.

## 📝 Syntax

- tform = affine3d()
- tform = affine3d(T)

## 📥 Input argument

- T - 4-by-4 or 3-by-4 finite nonsingular affine transformation matrix in row-vector convention. When omitted, the identity transform is returned.

## 📤 Output argument

- tform - Structure with Type, Dimensionality and T fields that can be passed to imwarp for 3-D volumes.

## 📄 Description


Create a 3-D affine transformation structure containing a row-vector convention matrix T. Translation values are stored in the last row.

## 💡 Example

Create a 3-D translation transform

```matlab
tform = affine3d([1 0 0 0; 0 1 0 0; 0 0 1 0; 4 5 6 1]);
tform.T
```


## 🔗 See also

[affine2d](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/affine2d.md), [imref3d](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imref3d.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
