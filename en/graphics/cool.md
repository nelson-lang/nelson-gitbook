# cool

Cool colormap array.

## Syntax

- c = cool
- c = cool(m)

## Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## Output argument

- c - Cool colormap array.

## Description

  <p><b>cool</b> returns the colormap with cool colors.</p>

## Example

```matlab
f = figure();
surf(peaks);
colormap('cool');
```

<img src="cool_E6CFAE6A.svg" align="middle"/>

## See also

[colormap](colormap.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
