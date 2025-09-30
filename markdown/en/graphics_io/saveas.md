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

<p>
            <b>saveas</b> save figure to specific file format.</p>
<p>
                <b>supported formats</b>:</p>
Option Format File extension svg SVG (scalable vector graphics) .svg pdf Full page Portable Document Format (PDF) color .pdf png PNG 24-bit .png jpg JPEG 24-bit .jpg gif Graphics Interchange Format .gif tif Tagged Image File Format .tif

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
