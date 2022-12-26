# saveas

Save figure to specific file format.

## Syntax

- saveas(fig, filename)
- saveas(fig, filename, formattype)

## Input argument

- fig - figure object.
- filename - character vector or scalar string: destination filename.
- formattype - character vector or scalar string: extension filename.

## Description

  <p><b>saveas</b> save figure to specific file format.</p>
  <p><b>supported formats</b>:</p>
  <table style="width:100%">
    <tr>
      <th>Option</th>
      <th>Format</th>
      <th>File extension</th>
    </tr>
    <tr>
      <td>svg</td>
      <td>SVG (scalable vector graphics)</td>
      <td>.svg</td>
    </tr>
    <tr>
      <td>pdf</td>
      <td>Full page Portable Document Format (PDF) color</td>
      <td>.pdf</td>
    </tr>
    <tr>
      <td>png</td>
      <td>PNG 24-bit</td>
      <td>.png</td>
    </tr>
    <tr>
      <td>jpg</td>
      <td>JPEG 24-bit</td>
      <td>.jpg</td>
    </tr>
  </table>

## Example

```matlab
x = -2:0.25:2;
y = x;
[X,Y] = meshgrid(x);
F = X.*exp(-X.^2-Y.^2);
surf(X,Y,F);
saveas(gcf(), 'svg-file.svg');
```

## See also

[gcf](gcf.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
