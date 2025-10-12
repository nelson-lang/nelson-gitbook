# deg2rad

Convert angle from degrees to radians.

## Syntax

- r = deg2rad(d)

## Input argument

- d - a numeric value (double or single)

## Output argument

- r - a numeric value

## Description

        d = deg2rad(r) converts angle units from degrees to radians for each element of r.

## Example

```matlab
D = 64.7;
R = deg2rad(D);
radEarth = 6371;
dist = radEarth * R
```

## See also

[rad2deg](../trigonometric_functions/rad2deg.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
