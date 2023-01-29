# bone

Bone colormap array.

## Syntax

- c = bone
- c = bone(m)

## Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## Output argument

- c - Bone colormap array.

## Description

  <p><b>bone</b> returns the colormap with bone colors.</p>

## Example

```matlab
f = figure();
surf(peaks);
colormap('bone');
```

<img src="bone_510FC629.svg" align="middle"/>

## See also

[colormap](colormap.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
