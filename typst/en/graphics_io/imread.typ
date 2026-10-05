#import "nelson_help.typ": *

= imread <graphics_io:imread>

Read image from graphics file.

== Syntax

- #raw("A = imread(filename)");
- #raw("[A, map] = imread(filename)");
- #raw("[A, map, transparency] = imread(filename)");

== Input argument

/ filename: a row vector characters or scalar string: name of graphics file.

== Output argument

/ A: Image data: array.
/ map: Colormap: m-by-3 matrix.
/ transparency: Transparency information: matrix.

== Description

#strong[imread]; reads the image data from the given file into a matrix.

 The file type is detected from its signature. The extension is used as a fallback for textual or ambiguous formats. For animated GIF files, the first composited frame is returned; for TIFF files, the first page is returned.

 Indexed images return an M-by-N #strong[uint8]; matrix, a K-by-3 double colormap in \[0, 1\] and, when present, an M-by-N #strong[uint8]; transparency matrix. RGB and RGBA images return an M-by-N-by-3 #strong[uint8]; array; RGBA transparency is returned separately as the third output. Sixteen-bit grayscale PNG, TIFF and PGM images return an M-by-N #strong[uint16]; matrix.

 

#table(
  columns: 2,
  [Format], [Access], 
  [BMP\/DIB], [read], 
  [GIF], [read, first composited frame], 
  [JPEG\/JFIF (JPG)], [read], 
  [TIFF], [read, first page], 
  [PCX], [read], 
  [PNG], [read], 
  [PBM], [read], 
  [PGM], [read], 
  [PPM], [read], 
  [WebP, TGA, PNM], [read], 
  [PSD, HDR\/RGBE, PIC], [read only], 
)

== Examples

``````matlab
f = figure();
filename = [tempname, '.webp'];
imwrite(rand(32, 32, 3), filename, 'Quality', 90);
img = imread(filename);
imagesc(img);
close(f);
``````


#align(center)[#image("imread.png")]
WebP transparency, indexed PNG and 16-bit grayscale data.

``````matlab
source = rand(16, 16, 3);
alphaSource = rand(16, 16);
webpFile = [tempname, '.webp'];
png16File = [tempname, '.png'];
indexedFile = [tempname, '.png'];
imwrite(source, webpFile, 'Alpha', alphaSource);
imwrite(uint16(reshape(0:255, 16, 16) * 257), png16File);
indices = uint8([0 1; 1 0]);
palette = [1 0 0; 0 0 1];
imwrite(indices, palette, indexedFile);
[rgb, map, alpha] = imread(webpFile);
gray16 = imread(png16File);
[X, indexedMap, indexedAlpha] = imread(indexedFile);
``````


== See also

#nlink(<graphics:4_images.imagesc>)[imagesc];, #nlink(<graphics_io:imformats>)[imformats];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.13.0], [pcx, tiff formats added],
  [2.0.0], [WebP and deterministic Qt-free codecs added],
)

// Author: Allan CORNET
