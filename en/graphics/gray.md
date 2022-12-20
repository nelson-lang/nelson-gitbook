# gray

Gray colormap array.

## Syntax

- c = gray
- c = gray(m)

## Input argument

- m - a scalar integer value: Number of colors (256 as default value).

## Output argument

- c - c: Gray colormap array.

## Description

  <p><b>gray</b> returns the colormap with gray colors.</p>
  <p>
    <img src="gray_65E5F57B.svg"/>
  </p>

## Example

```matlab
f = figure();
surf(peaks);
colormap('gray');
```

## See also

[colormap](colormap.html).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
