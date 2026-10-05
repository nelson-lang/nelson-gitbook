#import "nelson_help.typ": *

= Graphics I/O functions

The Graphics I\/O module provides functions for importing, exporting, and managing graphical content and image formats.

 It supports reading and writing image files, copying figures, and saving plots in various file formats for interoperability with other applications.

== Functions

- #nlink(<graphics_io:copygraphics>)[copygraphics]: Copy plot to clipboard.
- #nlink(<graphics_io:imformats>)[imformats]: Manage supported image formats.
- #nlink(<graphics_io:imread>)[imread]: Read image from graphics file.
- #nlink(<graphics_io:imwrite>)[imwrite]: Write image to graphics file.
- #nlink(<graphics_io:saveas>)[saveas]: Save figure to specific file format.


#nested[
#pagebreak(weak: true)
#include "copygraphics.typ"
#pagebreak(weak: true)
#include "imformats.typ"
#pagebreak(weak: true)
#include "imread.typ"
#pagebreak(weak: true)
#include "imwrite.typ"
#pagebreak(weak: true)
#include "saveas.typ"
]
