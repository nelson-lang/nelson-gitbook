# String type

The String Type module provides functions for creating, manipulating, and analyzing text in Nelson.

It supports conversion between character arrays and string arrays, concatenation, trimming, justification, and case conversion.

The module also includes functions for searching, matching, replacing, and formatting strings, enabling flexible text processing for both simple and complex string operations.

## Create and Convert Text

Functions for creating text, formatting text, and converting between text and other data.

### Functions

- [append](1_create_convert_text/append.md) - combines strings horizontally.
- [blanks](1_create_convert_text/blanks.md) - creates an string of blank characters.
- [char](1_create_convert_text/char.md) - Converts to a character array.
- [compose](1_create_convert_text/compose.md) - Format data into multiple strings.
- [convertCharsToStrings](1_create_convert_text/convertCharsToStrings.md) - Convert chars arrays to string arrays.
- [convertContainedStringsToChars](1_create_convert_text/convertContainedStringsToChars.md) - Convert contained string arrays to character vectors.
- [convertStringToCharArgs](1_create_convert_text/convertStringsToCharArgs.md) - Convert string arrays to character arrays or cell of char vectors.
- [convertStringsToChars](1_create_convert_text/convertStringsToChars.md) - Convert string arrays to character arrays.
- [int2str](1_create_convert_text/int2str.md) - Convert an integer array to a string
- [mat2str](1_create_convert_text/mat2str.md) - Matrix to String.
- [newline](1_create_convert_text/newline.md) - Returns a newline character.
- [num2str](1_create_convert_text/num2str.md) - Converts numbers to character array.
- [sprintf](1_create_convert_text/sprintf.md) - Writes data to a string.
- [str2double](1_create_convert_text/str2double.md) - Converts a string to double.
- [strcat](1_create_convert_text/strcat.md) - concatenate strings horizontally.
- [string](1_create_convert_text/string.md) - string array constructor.
- [strings](1_create_convert_text/strings.md) - Create string array without characters.

## Text Properties

Functions for checking text type, length, and character properties.

### Functions

- [isStringScalar](2_text_properties/isStringScalar.md) - checks if input is string array with one element.
- [isletter](2_text_properties/isletter.md) - Determine which characters are letters.
- [isspace](2_text_properties/isspace.md) - Determine which characters are space.
- [isstrprop](2_text_properties/isstrprop.md) - Determine character categories.
- [strlength](2_text_properties/strlength.md) - Length of strings in cell of strings or string array.

## Find and Replace

Functions for locating, counting, erasing, and replacing text.

### Functions

- [contains](3_find_replace/contains.md) - checks if string contains with pattern.
- [count](3_find_replace/count.md) - Computes the number of occurrences of an pattern.
- [endsWith](3_find_replace/endsWith.md) - checks if string ends with pattern.
- [erase](3_find_replace/erase.md) - Erase matching text.
- [eraseBetween](3_find_replace/eraseBetween.md) - Erase text between boundaries.
- [findstr](3_find_replace/findstr.md) - Find one character vector inside another.
- [replace](3_find_replace/replace.md) - Replaces strings in another.
- [replaceBetween](3_find_replace/replaceBetween.md) - Replace text between boundaries.
- [startsWith](3_find_replace/startsWith.md) - checks if string starts with pattern.
- [strfind](3_find_replace/strfind.md) - Find a string in another.
- [strmatch](3_find_replace/strmatch.md) - Find strings that start with text.
- [strrep](3_find_replace/strrep.md) - Replaces strings in another.

## Patterns

Pattern-building functions and boundary definitions for text matching.

### Functions

- [alphanumericBoundary](4_patterns/alphanumericBoundary.md) - Boundary for alphanumeric text.
- [alphanumericsPattern](4_patterns/alphanumericsPattern.md) - Pattern for alphanumeric characters.
- [asFewOfPattern](4_patterns/asFewOfPattern.md) - Repeat pattern as few times as possible.
- [asManyOfPattern](4_patterns/asManyOfPattern.md) - Repeat pattern as many times as possible.
- [caseInsensitivePattern](4_patterns/caseInsensitivePattern.md) - Match pattern ignoring case.
- [caseSensitivePattern](4_patterns/caseSensitivePattern.md) - Match pattern using case.
- [characterListPattern](4_patterns/characterListPattern.md) - Pattern for listed characters.
- [digitBoundary](4_patterns/digitBoundary.md) - Boundary for digit text.
- [digitsPattern](4_patterns/digitsPattern.md) - Pattern for digit characters.
- [letterBoundary](4_patterns/letterBoundary.md) - Boundary for letter text.
- [lettersPattern](4_patterns/lettersPattern.md) - Pattern for letter characters.
- [lineBoundary](4_patterns/lineBoundary.md) - Start or end of line pattern.
- [lookAheadBoundary](4_patterns/lookAheadBoundary.md) - Boundary before a pattern.
- [lookBehindBoundary](4_patterns/lookBehindBoundary.md) - Boundary after a pattern.
- [maskedPattern](4_patterns/maskedPattern.md) - Pattern with display name.
- [namedPattern](4_patterns/namedPattern.md) - Named pattern.
- [optionalPattern](4_patterns/optionalPattern.md) - Make pattern optional.
- [pattern](4_patterns/pattern.md) - Text pattern object.
- [possessivePattern](4_patterns/possessivePattern.md) - Match pattern possessively.
- [textBoundary](4_patterns/textBoundary.md) - Start or end of text pattern.
- [whitespaceBoundary](4_patterns/whitespaceBoundary.md) - Boundary for whitespace text.
- [whitespacePattern](4_patterns/whitespacePattern.md) - Pattern for whitespace characters.
- [wildcardPattern](4_patterns/wildcardPattern.md) - Pattern for wildcard text.

## Regular Expressions

Regular expression search, replacement, translation, and pattern helpers.

### Functions

- [regexp](5_regular_expressions/regexp.md) - Match regular expression.
- [regexpPattern](5_regular_expressions/regexpPattern.md) - Pattern from regular expression.
- [regexpi](5_regular_expressions/regexpi.md) - Match regular expression, ignoring case.
- [regexprep](5_regular_expressions/regexprep.md) - Replace text using regular expression.
- [regexptranslate](5_regular_expressions/regexptranslate.md) - Translate text into regular expression.

## Join, Split, and Extract

Functions for extracting parts of text and combining or splitting text values.

### Functions

- [extract](6_join_split_extract/extract.md) - Extract matching text.
- [extractAfter](6_join_split_extract/extractAfter.md) - Extract text after a boundary.
- [extractBefore](6_join_split_extract/extractBefore.md) - Extract text before a boundary.
- [extractBetween](6_join_split_extract/extractBetween.md) - Extract text between boundaries.
- [join](6_join_split_extract/join.md) - Combine strings.
- [split](6_join_split_extract/split.md) - Split text at delimiters.
- [splitlines](6_join_split_extract/splitlines.md) - Split text at line breaks.
- [strjoin](6_join_split_extract/strjoin.md) - Join text with a delimiter.
- [strread](6_join_split_extract/strread.md) - Read values from text.
- [strsplit](6_join_split_extract/strsplit.md) - Split character vector at delimiters.
- [strtok](6_join_split_extract/strtok.md) - Select first token in text.
- [strvcat](6_join_split_extract/strvcat.md) - Vertically concatenate text.

## Edit Text

Functions for trimming, padding, inserting, reversing, and changing text case.

### Functions

- [deblank](7_edit_text/deblank.md) - Remove trailing whitespace.
- [insertAfter](7_edit_text/insertAfter.md) - Insert text after a boundary.
- [insertBefore](7_edit_text/insertBefore.md) - Insert text before a boundary.
- [lower](7_edit_text/lower.md) - Convert text to lowercase.
- [pad](7_edit_text/pad.md) - Pad text to a requested width.
- [reverse](7_edit_text/reverse.md) - Reverse characters in text.
- [strip](7_edit_text/strip.md) - Remove leading and trailing characters from text.
- [strjust](7_edit_text/strjust.md) - Justify strings
- [strtrim](7_edit_text/strtrim.md) - Remove leading and trailing whitespace.
- [tolower](7_edit_text/tolower.md) - Lower case conversion.
- [toupper](7_edit_text/toupper.md) - Upper case conversion.
- [upper](7_edit_text/upper.md) - Convert text to uppercase.

## Compare Text

Functions for comparing and matching text values.

### Functions

- [matches](8_compare_text/matches.md) - Determine if pattern matches with strings.
- [strcmp](8_compare_text/strcmp.md) - Strings comparison.
- [strcmpi](8_compare_text/strcmpi.md) - Strings comparison (case insensitive).
- [strncmp](8_compare_text/strncmp.md) - Compares first n characters of strings.
- [strncmpi](8_compare_text/strncmpi.md) - Compares first n characters of strings (case sensitive).

## Functions

- [symvar](symvar.md) - Determine the variables in an expression.
- [vectorize](vectorize.md) - Insert element-wise operators in an expression string.
