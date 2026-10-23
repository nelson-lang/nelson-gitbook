# reckon

Point at a given spherical range and azimuth.

## 📝 Syntax

- [lat2, lon2] = reckon(lat1, lon1, arclen, az)

## 📥 Input argument

- lat1 - latitude of the start point, in degrees.
- lon1 - longitude of the start point, in degrees.
- arclen - spherical distance to travel, in degrees of arc.
- az - azimuth of the direction of travel, in degrees clockwise from north.

## 📤 Output argument

- lat2 - latitude of the destination point, in degrees.
- lon2 - longitude of the destination point, in degrees.

## 📄 Description


<b>reckon</b> computes the latitude and longitude reached by starting at the point <b>(lat1, lon1)</b> and travelling the great-circle distance <b>arclen</b> along the initial azimuth <b>az</b> on a sphere. All angles are expressed in degrees. The inputs are broadcast together, so a scalar start point can be combined with vectors of ranges and azimuths.

## 💡 Example



```matlab
[lat, lon] = reckon(0, 0, 10, 90)
```


## 🔗 See also

[ellipse1](../geometry/ellipse1.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
