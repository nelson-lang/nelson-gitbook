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
    <tr>
      <td>gif</td>
      <td>Graphics Interchange Format</td>
      <td>.gif</td>
    </tr>
    <tr>
      <td>tif</td>
      <td>Tagged Image File Format</td>
      <td>.tif</td>
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

[gcf](../graphics/gcf.md).

## History

| Version | Description       |
| ------- | ----------------- |
| 1.0.0   | initial version   |
| 1.13.0  | tiff format added |

## Author

Allan CORNET
