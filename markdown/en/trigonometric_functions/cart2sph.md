# cart2sph

Transforms Cartesian to spherical coordinates.

## 📝 Syntax

- [azimuth, elevation, r] = cart2sph(x, y, z)

## 📥 Input argument

- x - a numeric value (double or single real): Cartesian coordinates
- y - a numeric value (double or single real): Cartesian coordinates
- z - a numeric value (double or single real): Cartesian coordinates

## 📤 Output argument

- azimuth - a numeric value: Azimuth angle.
- elevation - a numeric value: Elevation angle.
- r - a numeric value: Radius.

## 📄 Description

<b>cart2sph</b> transforms Cartesian to spherical coordinates.

## 💡 Example

```matlab
x = [1 1 1 1; -1 -1 -1 -1];
y = [1 1 -1 -1; 1 1 -1 -1];
z = [1 -1 1 -1; 1 -1 1 -1];
[az, el, r] = cart2sph(x, y, z)
```

## 🔗 See also

[sph2cart](../trigonometric_functions/sph2cart.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
