# saveas

Save figure to specific file format.

## 📝 Syntax

- saveas(fig, filename)
- saveas(fig, filename, formattype)

## 📥 Input argument

- fig - figure object.
- filename - character vector or scalar string: destination filename.
- formattype - character vector or scalar string: extension filename.

## 📄 Description

<b>saveas</b> save figure to specific file format.

The explicit <b>formattype</b> takes precedence over the filename extension. Without an extension, PNG is selected and <b>.png</b> is appended. Desktop, web and headless modes use the same renderer and format registry.

<b>Background:</b> while the figure <b>InvertHardcopy</b> property is <b>'on'</b> (the default), the exported background is white whatever the on-screen figure <b>Color</b>(light gray by default). Set <b>InvertHardcopy</b> to <b>'off'</b> to export the on-screen figure color.

<b>Vector formats</b> use dedicated figure exporters:

| Option | Format                                    | Extension |
| ------ | ----------------------------------------- | --------- |
| svg    | Scalable Vector Graphics                  | .svg      |
| pdf    | Portable Document Format, full-page color | .pdf      |

<b>Raster formats</b> are encoded through the same registry as <b>imwrite</b>:

| Canonical option   | Aliases    | Extension              |
| ------------------ | ---------- | ---------------------- |
| png                | -          | .png                   |
| jpg                | jpeg, jfif | .jpg, .jpeg, .jfif     |
| gif                | -          | .gif                   |
| webp               | -          | .webp                  |
| tiff               | tif        | .tiff, .tif            |
| bmp                | dib        | .bmp, .dib             |
| tga                | -          | .tga                   |
| pbm, pgm, ppm, pnm | -          | .pbm, .pgm, .ppm, .pnm |
| pcx                | -          | .pcx                   |

## 💡 Example

```matlab
x = -2:0.25:2;
y = x;
[X,Y] = meshgrid(x);
F = X.*exp(-X.^2-Y.^2);
surf(X,Y,F);
saveas(gcf(), [tempdir, 'svg-file.svg']);
saveas(gcf(), [tempdir, 'webp-file.webp']);
saveas(gcf(), [tempdir, 'bitmap-file.bmp']);
saveas(gcf(), [tempdir, 'document-file.pdf']);
close(gcf());

```

## 🔗 See also

[gcf](../graphics/2_graphics_objects/1_object_management/gcf.md).

## 🕔 History

| Version | 📄 Description                                        |
| ------- | ----------------------------------------------------- |
| 1.0.0   | initial version                                       |
| 1.13.0  | tiff format added                                     |
| 2.0.0   | shared desktop, web and headless export formats added |

<!--
## 👤 Author

Allan CORNET
-->
