# meshgrid

Cartesian rectangular grid in 2-D or 3-D.

## Syntax

- [X, Y] = meshgrid(x, y)
- [X, Y] = meshgrid(x)
- [X, Y, Z] = meshgrid(x, y, z)
- [X, Y, Z] = meshgrid(x)

## Input argument

- x - x-coordinates of points: vector
- y - y-coordinates of points: vector
- z - z-coordinates of points: vector

## Output argument

- X - x-coordinates over grid: 2-D or 3-D array.
- Y - y-coordinates over grid: 2-D or 3-D array.
- Z - z-coordinates over grid: 3-D array.

## Description

<p>
            meshgrid creates Cartesian rectangular grid in 2-D or 3-D.</p>

## Example

```matlab
x = -1:0.4:1;
y = -1:0.4:1;
[X, Y] = meshgrid(x, y)

x = 0:2:6;
y = 0:1:6;
z = 0:3:6;
[X,Y,Z] = meshgrid(x, y, z)
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
