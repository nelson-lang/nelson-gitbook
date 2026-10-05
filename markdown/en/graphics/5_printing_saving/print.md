# print

Export a figure to an image or document file.

## 📝 Syntax

- print(filename)
- print(filename, formatoption)
- print(fig, filename)
- print(fig, filename, formatoption)
- print(fig, filename, formatoption, resolution)

## 📥 Input argument

- fig - Figure graphics object. When omitted, the current figure returned by <b>gcf()</b> is used.
- filename - Character vector or string scalar: destination filename.
- formatoption - Character vector or string scalar: a <b>-d</b> device option (for example <b>'-dpng'</b>, <b>'-dpdf'</b>, <b>'-dsvg'</b>). When omitted, the format is inferred from the filename extension.
- resolution - Character vector or string scalar: a <b>-r</b> resolution option (for example <b>'-r150'</b>). Accepted for compatibility; the export follows the figure size.

## 📄 Description


<b>print</b> exports a figure to an image or document file. It is a thin wrapper over <b>saveas</b>: the <b>-d</b> device option selects the output format and the figure is exported through the shared desktop, web and headless renderer. 

When no <b>-d</b> device is given, the format is inferred from the filename extension, and PNG is used when the filename has no extension. A <b>-r</b> resolution option is accepted for compatibility but does not resample the output. 

The device option maps to the same format registry as <b>saveas</b>: 

| Device option | Format | Extension | 
| --- | --- | --- | 
| -dpng | Portable Network Graphics | .png | 
| -djpeg, -djpg | JPEG | .jpg | 
| -dtiff, -dtiffn, -dtif | TIFF | .tif | 
| -dbmp | Bitmap | .bmp | 
| -dgif | Graphics Interchange Format | .gif | 
| -dwebp | WebP | .webp | 
| -dsvg | Scalable Vector Graphics | .svg | 
| -dpdf | Portable Document Format | .pdf | 

 

<b>Background:</b> as with <b>saveas</b>, while the figure <b>InvertHardcopy</b> property is <b>'on'</b> (the default), the exported background is white whatever the on-screen figure <b>Color</b>.

## 💡 Examples

Export the current figure to PNG, PDF and SVG.

```matlab

f = figure('Visible', 'off');
plot(1:10, (1:10) .^ 2);
title('Quadratic data');
print(f, [tempname(), '.png'], '-dpng');
print(f, [tempname(), '.pdf'], '-dpdf');
print(f, [tempname(), '.svg'], '-dsvg', '-r150');
close(f);

```
Infer the format from the filename extension.

```matlab

f = figure('Visible', 'off');
plot(1:5);
pngfile = [tempname(), '.png'];
print(pngfile);
assert(isfile(pngfile));
close(f);

```


## 🔗 See also

[saveas](../../graphics_io/saveas.md), [savefig](../../graphics/5_printing_saving/savefig.md), [gcf](../../graphics/2_graphics_objects/1_object_management/gcf.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
