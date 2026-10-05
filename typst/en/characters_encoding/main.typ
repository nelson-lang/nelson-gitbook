#import "nelson_help.typ": *

= Characters encoding

The Characters Encoding module provides tools for converting between native byte representations and Unicode characters.

 It enables scripts to correctly interpret and manipulate text in various encodings, ensuring compatibility across different platforms and locales.

 The module also detects character sets that match a given input for text processing and internationalization.

== Functions

- #nlink(<characters_encoding:native2unicode>)[native2unicode]: Converts bytes representation to unicode characters
- #nlink(<characters_encoding:nativecharset>)[nativecharset]: Find all charset matches that appear to be consistent with the input
- #nlink(<characters_encoding:unicode2native>)[unicode2native]: Converts unicode characters representation to bytes


#nested[
#pagebreak(weak: true)
#include "native2unicode.typ"
#pagebreak(weak: true)
#include "nativecharset.typ"
#pagebreak(weak: true)
#include "unicode2native.typ"
]
