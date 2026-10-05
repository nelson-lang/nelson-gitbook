#import "nelson_help.typ": *

= imwrite <graphics_io:imwrite>

Write image to graphics file.

== Syntax

- #raw("imwrite(A, filename)");
- #raw("imwrite(A, map, filename)");
- #raw("imwrite(..., fmt)");
- #raw("imwrite(..., propertyName, propertyValue)");

== Input argument

/ A: matrix: 3D for color and 2D for gray or indexed image.
/ map: Colormap of indexed image:m-by-3 array.
/ fmt: Format of output file: 'bmp', 'png', 'jpg', 'gif', ...
/ filename: a row vector characters or scalar string: name of graphics file.
/ propertyName: a scalar string or row vector character.
/ propertyValue: a value.

== Description

#strong[imwrite(A, filename)]; writes image data#strong[A]; to the file specified by #strong[filename];

 Writable formats are PNG, JPEG\/JFIF, GIF, WebP, TIFF, BMP\/DIB, TGA, PBM, PGM, PPM\/PNM and PCX. The format is selected from #strong[fmt];, or from the filename extension.

 #strong[A]; may be logical, single, double, uint8 or uint16. A two-dimensional array is grayscale unless a K-by-3 colormap in \[0, 1\] is supplied; a direct-color image is M-by-N-by-3. The alpha matrix must be exactly M-by-N. Floating-point and logical data are normalized to 8 bits; uint8 data is used directly. An indexed image remains indexed when each palette entry has a consistent alpha value. uint16 input is accepted only for grayscale PNG, TIFF and PGM. Other formats report an explicit error.

 Files are replaced atomically after successful encoding, so an encoding error does not leave a partially written destination.

 

 Property name:

 

 #strong[Quality];: JPEG or WebP quality in \[0, 100\] (75 by default).

 #strong[Alpha];: M-by-N per-pixel matrix; floating-point values use \[0, 1\], uint8 values use \[0, 255\].

 #strong[Comment];: text stored when the selected codec supports this metadata.

 #strong[Author];: author text stored when the selected codec supports this metadata.

 PNG, JPEG and TIFF store #strong[Comment]; and #strong[Author];; GIF stores #strong[Comment];. Other codecs ignore these properties without failing the image write.

 

 Properties for #strong[gif]; format:

 

 #strong[WriteMode];: #strong[overwrite]; (default) or #strong[append];.

 #strong[LoopCount];: animation loop count; #strong[Inf]; repeats indefinitely.

 #strong[DelayTime];: frame delay in seconds, in \[0, 655\].


== Examples

``````matlab
f = figure();
A = rand(69, 69);
A(:,:,2) = rand(69,69);
A(:,:,3) = rand(69,69);
imshow(A);
imwrite(A, [tempdir, '69x69-RGB.png']);
close(f);
``````

WebP with alpha and a 16-bit PNG.

``````matlab
rgb = rand(16, 16, 3);
alpha = rand(16, 16);
gray16 = uint16(reshape(0:255, 16, 16) * 257);
imwrite(rgb, [tempdir, 'image.webp'], 'Quality', 90, 'Alpha', alpha);
imwrite(gray16, [tempdir, 'image16.png']);
``````

GIF animation with complete animation options.

``````matlab
firstFrame = uint8(zeros(32, 32, 3));
firstFrame(:, :, 1) = 255;
secondFrame = uint8(zeros(32, 32, 3));
secondFrame(:, :, 3) = 255;
filename_gif = [tempname(), '.gif'];
imwrite(firstFrame, filename_gif, 'gif', 'WriteMode', 'overwrite', ...
        'LoopCount', Inf, 'DelayTime', 0.25);
imwrite(secondFrame, filename_gif, 'gif', 'WriteMode', 'append', ...
        'DelayTime', 0.50);
``````


#align(center)[#image("imwrite_gif.gif")]

== See also

#nlink(<graphics_io:imread>)[imread];, #nlink(<graphics:4_images.imshow>)[imshow];, #nlink(<graphics_io:imformats>)[imformats];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.13.0], [gif animation, pcx format added],
  [2.0.0], [WebP, portable codecs and 16-bit grayscale writing added],
)

// Author: Allan CORNET
