# Characters encoding

The Characters Encoding module provides tools for converting between native byte representations and Unicode characters.

It enables scripts to correctly interpret and manipulate text in various encodings, ensuring compatibility across different platforms and locales.

The module also detects character sets that match a given input for text processing and internationalization.

## Functions

- [native2unicode](native2unicode.md) - Converts bytes representation to unicode characters
- [nativecharset](nativecharset.md) - Find all charset matches that appear to be consistent with the input
- [unicode2native](unicode2native.md) - Converts unicode characters representation to bytes
