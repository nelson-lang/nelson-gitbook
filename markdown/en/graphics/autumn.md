# autumn

Autumn colormap array.

## Syntax

- c = autumn
- c = autumn(m)

## Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## Output argument

- c - Autumn colormap array.

## Description

  <p><b>autumn</b> returns the colormap with autumn colors.</p>

## Example

```matlab
f = figure();
surf(peaks);
colormap('autumn');
```

<img src="autumn_80D6835B.svg" align="middle"/>

## See also

[colormap](colormap.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
