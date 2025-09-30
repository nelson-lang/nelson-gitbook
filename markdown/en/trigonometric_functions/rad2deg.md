# rad2deg

Convert angle from radians to degrees.

## Syntax

- d = rad2deg(r)

## Input argument

- r - a numeric value (double or single)

## Output argument

- d - a numeric value

## Description

<b>d = rad2deg(r)</b>converts angle units from radians to degrees for each element of<b>r</b>.

## Example

```matlab
dist = 7194;
radEarth = 6371;
D = rad2deg(dist / radEarth)
```

## See also

[deg2rad](../trigonometric_functions/deg2rad.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
