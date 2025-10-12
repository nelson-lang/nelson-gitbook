# spring

Spring colormap array.

## Syntax

- c = spring
- c = spring(m)

## Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## Output argument

- c - Spring colormap array.

## Description

<p>
            spring returns the colormap with spring colors.</p>

## Example

```matlab
f = figure();
surf(peaks);
colormap('spring');
```

<img src="spring.svg" align="middle"/>

## See also

[colormap](../graphics/colormap.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
