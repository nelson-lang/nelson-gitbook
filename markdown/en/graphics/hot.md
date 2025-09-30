# hot

Hot colormap array.

## Syntax

- c = hot
- c = hot(m)

## Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## Output argument

- c - Hot colormap array.

## Description

<p>
            <b>hot</b> returns the colormap with hot colors.</p>

## Example

```matlab
f = figure();
surf(peaks);
colormap('hot');
```

<img src="hot.svg" align="middle"/>

## See also

[colormap](../graphics/colormap.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
