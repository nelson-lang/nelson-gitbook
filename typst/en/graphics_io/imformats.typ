#import "nelson_help.typ": *

= imformats <graphics_io:imformats>

Manage supported image formats.

== Syntax

- #raw("imformats ()");
- #raw("formats = imformats()");
- #raw("format = imformats(ext)");

== Input argument

/ ext: File format extension: character vector or string scalar.

== Output argument

/ formats: structure array: supported image formats.
/ format: structure: supported image format.

== Description

#strong[imformats]; returns the list of supported image formats.

 #strong[formats \= imformats()]; returns the list of supported image formats in a structure array.

 #strong[format \= imformats(ext)]; returns the structure of the image format corresponding to the extension #strong[ext];.

 Each element of the structure array contains the fields:

 

- #strong[ext];: file format extension
- #strong[isa];: reserved field; empty because signature detection is centralized
- #strong[info];: reserved field; empty because capabilities are stored in this structure
- #strong[description];: file format description
- #strong[read];: #strong[imread]; capability, or empty for an unreadable format
- #strong[write];: #strong[imwrite]; capability, or empty for a read-only format
- #strong[alpha];: logical scalar indicating if the file format supports transparency
- #strong[multipage];: logical scalar indicating exposed multi-image writing; only GIF is true The registry is deterministic and does not depend on desktop image plugins. An empty #strong[read]; or #strong[write]; field means that the operation is not supported. In the array returned without an argument, these fields contain the function name; a single-format query returns the equivalent function handle.

 

#table(
  columns: 6,
  [Canonical extension], [Aliases], [Read], [Write], [Alpha], [Multipage], 
  [png], [-], [yes], [yes], [yes], [no], 
  [jpg], [jpeg, jfif], [yes], [yes], [no], [no], 
  [gif], [-], [yes], [yes], [yes], [yes], 
  [webp], [-], [yes], [yes], [yes], [no], 
  [tiff], [tif], [yes], [yes], [yes], [no], 
  [bmp], [dib], [yes], [yes], [yes], [no], 
  [tga], [-], [yes], [yes], [yes], [no], 
  [pbm], [-], [yes], [yes], [no], [no], 
  [pgm], [-], [yes], [yes], [no], [no], 
  [ppm], [-], [yes], [yes], [no], [no], 
  [pnm], [-], [yes], [yes], [no], [no], 
  [pcx], [-], [yes], [yes], [no], [no], 
  [psd], [-], [yes], [no], [yes], [no], 
  [hdr], [rgbe], [yes], [no], [no], [no], 
  [pic], [-], [yes], [no], [yes], [no], 
)

== Examples

``````matlab
imformats()
``````

Query a format by an alias.

``````matlab
imformats('jpeg')
imformats('webp')
``````

Filter readable and writable formats.

``````matlab
formats = imformats();
readable = {};
writable = {};
for k = 1:length(formats)
    if ~isempty(formats(k).read), readable{end + 1} = formats(k).ext; end
    if ~isempty(formats(k).write), writable{end + 1} = formats(k).ext; end
end
readable
writable
``````


== See also

#nlink(<graphics_io:imwrite>)[imwrite];, #nlink(<graphics_io:imread>)[imread];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.13.0], [initial version],
  [2.0.0], [deterministic cross-platform format registry],
)

// Author: Allan CORNET
