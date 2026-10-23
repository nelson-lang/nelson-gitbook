# ellipse1

Points on a small ellipse on a sphere.

## 📝 Syntax

- [lat, lon] = ellipse1(lat0, lon0, ellipse)
- [lat, lon] = ellipse1(lat0, lon0, ellipse, offset)
- [lat, lon] = ellipse1(lat0, lon0, ellipse, offset, npts)

## 📥 Input argument

- lat0 - latitude of the ellipse center, in degrees.
- lon0 - longitude of the ellipse center, in degrees.
- ellipse - two-element vector <b>[semimajor eccentricity]</b>; the semimajor axis is a spherical distance in degrees of arc.
- offset - azimuth of the semimajor axis, in degrees (default 0).
- npts - number of points used to trace the ellipse (default 100).

## 📤 Output argument

- lat - latitudes of the ellipse boundary points, in degrees.
- lon - longitudes of the ellipse boundary points, in degrees.

## 📄 Description


<b>ellipse1</b> returns the latitude and longitude of points tracing a small ellipse on a sphere, centered at <b>(lat0, lon0)</b>. The ellipse is described by its semimajor axis (a spherical distance in degrees of arc) and its eccentricity. A zero eccentricity produces a small circle whose radius equals the semimajor axis. The boundary points are obtained with <b>reckon</b>, so the first and last points coincide.

## 💡 Example



```matlab
[lat, lon] = ellipse1(0, 0, [10 0.8], 30);
f = figure();
plot(lon, lat);
axis equal
```


## 🔗 See also

[reckon](../geometry/reckon.md), [axes2ecc](../geometry/axes2ecc.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
