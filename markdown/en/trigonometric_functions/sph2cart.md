# sph2cart

Transform spherical coordinates to Cartesian.

## Syntax

- [x, y, z] = sph2cart(azimuth, elevation, r)

## Input argument

- azimuth - a numeric value: Azimuth angle.
- elevation - a numeric value: Elevation angle.
- r - a numeric value: Radius.

## Output argument

- x - a numeric value (double or single real): Cartesian coordinates
- y - a numeric value (double or single real): Cartesian coordinates
- z - a numeric value (double or single real): Cartesian coordinates

## Description

<b>sph2cart</b> transforms Cartesian to spherical coordinates.

## Example

```matlab
azimut = [0.7854, 0.7854, -0.7854, -0.7854; 2.3562, 2.3562, -2.3562, -2.3562];
elevation = [0.6155, -0.6155, 0.6155, -0.6155; 0.6155, -0.6155, 0.6155, -0.6155];
radius = 1.7321 * ones(2, 4);
[x, y, z] = sph2cart(azimut, elevation, radius)
```

## See also

[cart2sph](cart2sph.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
