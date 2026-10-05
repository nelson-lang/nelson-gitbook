#import "nelson_help.typ": *

= File archiver functions

The File Archiver module provides tools for compressing and decompressing files in Nelson.

 It supports creation of zip archives and extraction of files from zip archives, enabling efficient file storage, sharing, and management.

== Functions

- #nlink(<file_archiver:unzip>)[unzip]: Decompress zip file.
- #nlink(<file_archiver:zip>)[zip]: Compress files into zip file.


#nested[
#pagebreak(weak: true)
#include "unzip.typ"
#pagebreak(weak: true)
#include "zip.typ"
]
