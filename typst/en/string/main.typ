#import "nelson_help.typ": *

= String type

The String Type module provides functions for creating, manipulating, and analyzing text in Nelson.

 It supports conversion between character arrays and string arrays, concatenation, trimming, justification, and case conversion.

 The module also includes functions for searching, matching, replacing, and formatting strings, enabling flexible text processing for both simple and complex string operations.

== Functions

- #nlink(<string:symvar>)[symvar]: Determine the variables in an expression.
- #nlink(<string:vectorize>)[vectorize]: Insert element-wise operators in an expression string.

== Create and Convert Text

Functions for creating text, formatting text, and converting between text and other data.

=== Functions

- #nlink(<string:1_create_convert_text.append>)[append]: combines strings horizontally.
- #nlink(<string:1_create_convert_text.blanks>)[blanks]: creates an string of blank characters.
- #nlink(<string:1_create_convert_text.char>)[char]: Converts to a character array.
- #nlink(<string:1_create_convert_text.compose>)[compose]: Format data into multiple strings.
- #nlink(<string:1_create_convert_text.convertCharsToStrings>)[convertCharsToStrings]: Convert chars arrays to string arrays.
- #nlink(<string:1_create_convert_text.convertContainedStringsToChars>)[convertContainedStringsToChars]: Convert contained string arrays to character vectors.
- #nlink(<string:1_create_convert_text.convertStringsToCharArgs>)[convertStringToCharArgs]: Convert string arrays to character arrays or cell of char vectors.
- #nlink(<string:1_create_convert_text.convertStringsToChars>)[convertStringsToChars]: Convert string arrays to character arrays.
- #nlink(<string:1_create_convert_text.int2str>)[int2str]: Convert an integer array to a string
- #nlink(<string:1_create_convert_text.mat2str>)[mat2str]: Matrix to String.
- #nlink(<string:1_create_convert_text.newline>)[newline]: Returns a newline character.
- #nlink(<string:1_create_convert_text.num2str>)[num2str]: Converts numbers to character array.
- #nlink(<string:1_create_convert_text.sprintf>)[sprintf]: Writes data to a string.
- #nlink(<string:1_create_convert_text.str2double>)[str2double]: Converts a string to double.
- #nlink(<string:1_create_convert_text.strcat>)[strcat]: concatenate strings horizontally.
- #nlink(<string:1_create_convert_text.string>)[string]: string array constructor.
- #nlink(<string:1_create_convert_text.strings>)[strings]: Create string array without characters.

== Text Properties

Functions for checking text type, length, and character properties.

=== Functions

- #nlink(<string:2_text_properties.isStringScalar>)[isStringScalar]: checks if input is string array with one element.
- #nlink(<string:2_text_properties.isletter>)[isletter]: Determine which characters are letters.
- #nlink(<string:2_text_properties.isspace>)[isspace]: Determine which characters are space.
- #nlink(<string:2_text_properties.isstrprop>)[isstrprop]: Determine character categories.
- #nlink(<string:2_text_properties.strlength>)[strlength]: Length of strings in cell of strings or string array.

== Find and Replace

Functions for locating, counting, erasing, and replacing text.

=== Functions

- #nlink(<string:3_find_replace.contains>)[contains]: checks if string contains with pattern.
- #nlink(<string:3_find_replace.count>)[count]: Computes the number of occurrences of an pattern.
- #nlink(<string:3_find_replace.endsWith>)[endsWith]: checks if string ends with pattern.
- #nlink(<string:3_find_replace.erase>)[erase]: Erase matching text.
- #nlink(<string:3_find_replace.eraseBetween>)[eraseBetween]: Erase text between boundaries.
- #nlink(<string:3_find_replace.findstr>)[findstr]: Find one character vector inside another.
- #nlink(<string:3_find_replace.replace>)[replace]: Replaces strings in another.
- #nlink(<string:3_find_replace.replaceBetween>)[replaceBetween]: Replace text between boundaries.
- #nlink(<string:3_find_replace.startsWith>)[startsWith]: checks if string starts with pattern.
- #nlink(<string:3_find_replace.strfind>)[strfind]: Find a string in another.
- #nlink(<string:3_find_replace.strmatch>)[strmatch]: Find strings that start with text.
- #nlink(<string:3_find_replace.strrep>)[strrep]: Replaces strings in another.

== Patterns

Pattern-building functions and boundary definitions for text matching.

=== Functions

- #nlink(<string:4_patterns.alphanumericBoundary>)[alphanumericBoundary]: Boundary for alphanumeric text.
- #nlink(<string:4_patterns.alphanumericsPattern>)[alphanumericsPattern]: Pattern for alphanumeric characters.
- #nlink(<string:4_patterns.asFewOfPattern>)[asFewOfPattern]: Repeat pattern as few times as possible.
- #nlink(<string:4_patterns.asManyOfPattern>)[asManyOfPattern]: Repeat pattern as many times as possible.
- #nlink(<string:4_patterns.caseInsensitivePattern>)[caseInsensitivePattern]: Match pattern ignoring case.
- #nlink(<string:4_patterns.caseSensitivePattern>)[caseSensitivePattern]: Match pattern using case.
- #nlink(<string:4_patterns.characterListPattern>)[characterListPattern]: Pattern for listed characters.
- #nlink(<string:4_patterns.digitBoundary>)[digitBoundary]: Boundary for digit text.
- #nlink(<string:4_patterns.digitsPattern>)[digitsPattern]: Pattern for digit characters.
- #nlink(<string:4_patterns.letterBoundary>)[letterBoundary]: Boundary for letter text.
- #nlink(<string:4_patterns.lettersPattern>)[lettersPattern]: Pattern for letter characters.
- #nlink(<string:4_patterns.lineBoundary>)[lineBoundary]: Start or end of line pattern.
- #nlink(<string:4_patterns.lookAheadBoundary>)[lookAheadBoundary]: Boundary before a pattern.
- #nlink(<string:4_patterns.lookBehindBoundary>)[lookBehindBoundary]: Boundary after a pattern.
- #nlink(<string:4_patterns.maskedPattern>)[maskedPattern]: Pattern with display name.
- #nlink(<string:4_patterns.namedPattern>)[namedPattern]: Named pattern.
- #nlink(<string:4_patterns.optionalPattern>)[optionalPattern]: Make pattern optional.
- #nlink(<string:4_patterns.pattern>)[pattern]: Text pattern object.
- #nlink(<string:4_patterns.possessivePattern>)[possessivePattern]: Match pattern possessively.
- #nlink(<string:4_patterns.textBoundary>)[textBoundary]: Start or end of text pattern.
- #nlink(<string:4_patterns.whitespaceBoundary>)[whitespaceBoundary]: Boundary for whitespace text.
- #nlink(<string:4_patterns.whitespacePattern>)[whitespacePattern]: Pattern for whitespace characters.
- #nlink(<string:4_patterns.wildcardPattern>)[wildcardPattern]: Pattern for wildcard text.

== Regular Expressions

Regular expression search, replacement, translation, and pattern helpers.

=== Functions

- #nlink(<string:5_regular_expressions.regexp>)[regexp]: Match regular expression.
- #nlink(<string:5_regular_expressions.regexpPattern>)[regexpPattern]: Pattern from regular expression.
- #nlink(<string:5_regular_expressions.regexpi>)[regexpi]: Match regular expression, ignoring case.
- #nlink(<string:5_regular_expressions.regexprep>)[regexprep]: Replace text using regular expression.
- #nlink(<string:5_regular_expressions.regexptranslate>)[regexptranslate]: Translate text into regular expression.

== Join, Split, and Extract

Functions for extracting parts of text and combining or splitting text values.

=== Functions

- #nlink(<string:6_join_split_extract.extract>)[extract]: Extract matching text.
- #nlink(<string:6_join_split_extract.extractAfter>)[extractAfter]: Extract text after a boundary.
- #nlink(<string:6_join_split_extract.extractBefore>)[extractBefore]: Extract text before a boundary.
- #nlink(<string:6_join_split_extract.extractBetween>)[extractBetween]: Extract text between boundaries.
- #nlink(<string:6_join_split_extract.join>)[join]: Combine strings.
- #nlink(<string:6_join_split_extract.split>)[split]: Split text at delimiters.
- #nlink(<string:6_join_split_extract.splitlines>)[splitlines]: Split text at line breaks.
- #nlink(<string:6_join_split_extract.strjoin>)[strjoin]: Join text with a delimiter.
- #nlink(<string:6_join_split_extract.strread>)[strread]: Read values from text.
- #nlink(<string:6_join_split_extract.strsplit>)[strsplit]: Split character vector at delimiters.
- #nlink(<string:6_join_split_extract.strtok>)[strtok]: Select first token in text.
- #nlink(<string:6_join_split_extract.strvcat>)[strvcat]: Vertically concatenate text.

== Edit Text

Functions for trimming, padding, inserting, reversing, and changing text case.

=== Functions

- #nlink(<string:7_edit_text.deblank>)[deblank]: Remove trailing whitespace.
- #nlink(<string:7_edit_text.insertAfter>)[insertAfter]: Insert text after a boundary.
- #nlink(<string:7_edit_text.insertBefore>)[insertBefore]: Insert text before a boundary.
- #nlink(<string:7_edit_text.lower>)[lower]: Convert text to lowercase.
- #nlink(<string:7_edit_text.pad>)[pad]: Pad text to a requested width.
- #nlink(<string:7_edit_text.reverse>)[reverse]: Reverse characters in text.
- #nlink(<string:7_edit_text.strip>)[strip]: Remove leading and trailing characters from text.
- #nlink(<string:7_edit_text.strjust>)[strjust]: Justify strings
- #nlink(<string:7_edit_text.strtrim>)[strtrim]: Remove leading and trailing whitespace.
- #nlink(<string:7_edit_text.tolower>)[tolower]: Lower case conversion.
- #nlink(<string:7_edit_text.toupper>)[toupper]: Upper case conversion.
- #nlink(<string:7_edit_text.upper>)[upper]: Convert text to uppercase.

== Compare Text

Functions for comparing and matching text values.

=== Functions

- #nlink(<string:8_compare_text.matches>)[matches]: Determine if pattern matches with strings.
- #nlink(<string:8_compare_text.strcmp>)[strcmp]: Strings comparison.
- #nlink(<string:8_compare_text.strcmpi>)[strcmpi]: Strings comparison (case insensitive).
- #nlink(<string:8_compare_text.strncmp>)[strncmp]: Compares first n characters of strings.
- #nlink(<string:8_compare_text.strncmpi>)[strncmpi]: Compares first n characters of strings (case sensitive).


#nested[
#pagebreak(weak: true)
#include "symvar.typ"
#pagebreak(weak: true)
#include "vectorize.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/append.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/blanks.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/char.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/compose.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/convertCharsToStrings.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/convertContainedStringsToChars.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/convertStringsToCharArgs.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/convertStringsToChars.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/int2str.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/mat2str.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/newline.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/num2str.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/sprintf.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/str2double.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/strcat.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/string.typ"
#pagebreak(weak: true)
#include "1_create_convert_text/strings.typ"
#pagebreak(weak: true)
#include "2_text_properties/isStringScalar.typ"
#pagebreak(weak: true)
#include "2_text_properties/isletter.typ"
#pagebreak(weak: true)
#include "2_text_properties/isspace.typ"
#pagebreak(weak: true)
#include "2_text_properties/isstrprop.typ"
#pagebreak(weak: true)
#include "2_text_properties/strlength.typ"
#pagebreak(weak: true)
#include "3_find_replace/contains.typ"
#pagebreak(weak: true)
#include "3_find_replace/count.typ"
#pagebreak(weak: true)
#include "3_find_replace/endsWith.typ"
#pagebreak(weak: true)
#include "3_find_replace/erase.typ"
#pagebreak(weak: true)
#include "3_find_replace/eraseBetween.typ"
#pagebreak(weak: true)
#include "3_find_replace/findstr.typ"
#pagebreak(weak: true)
#include "3_find_replace/replace.typ"
#pagebreak(weak: true)
#include "3_find_replace/replaceBetween.typ"
#pagebreak(weak: true)
#include "3_find_replace/startsWith.typ"
#pagebreak(weak: true)
#include "3_find_replace/strfind.typ"
#pagebreak(weak: true)
#include "3_find_replace/strmatch.typ"
#pagebreak(weak: true)
#include "3_find_replace/strrep.typ"
#pagebreak(weak: true)
#include "4_patterns/alphanumericBoundary.typ"
#pagebreak(weak: true)
#include "4_patterns/alphanumericsPattern.typ"
#pagebreak(weak: true)
#include "4_patterns/asFewOfPattern.typ"
#pagebreak(weak: true)
#include "4_patterns/asManyOfPattern.typ"
#pagebreak(weak: true)
#include "4_patterns/caseInsensitivePattern.typ"
#pagebreak(weak: true)
#include "4_patterns/caseSensitivePattern.typ"
#pagebreak(weak: true)
#include "4_patterns/characterListPattern.typ"
#pagebreak(weak: true)
#include "4_patterns/digitBoundary.typ"
#pagebreak(weak: true)
#include "4_patterns/digitsPattern.typ"
#pagebreak(weak: true)
#include "4_patterns/letterBoundary.typ"
#pagebreak(weak: true)
#include "4_patterns/lettersPattern.typ"
#pagebreak(weak: true)
#include "4_patterns/lineBoundary.typ"
#pagebreak(weak: true)
#include "4_patterns/lookAheadBoundary.typ"
#pagebreak(weak: true)
#include "4_patterns/lookBehindBoundary.typ"
#pagebreak(weak: true)
#include "4_patterns/maskedPattern.typ"
#pagebreak(weak: true)
#include "4_patterns/namedPattern.typ"
#pagebreak(weak: true)
#include "4_patterns/optionalPattern.typ"
#pagebreak(weak: true)
#include "4_patterns/pattern.typ"
#pagebreak(weak: true)
#include "4_patterns/possessivePattern.typ"
#pagebreak(weak: true)
#include "4_patterns/textBoundary.typ"
#pagebreak(weak: true)
#include "4_patterns/whitespaceBoundary.typ"
#pagebreak(weak: true)
#include "4_patterns/whitespacePattern.typ"
#pagebreak(weak: true)
#include "4_patterns/wildcardPattern.typ"
#pagebreak(weak: true)
#include "5_regular_expressions/regexp.typ"
#pagebreak(weak: true)
#include "5_regular_expressions/regexpPattern.typ"
#pagebreak(weak: true)
#include "5_regular_expressions/regexpi.typ"
#pagebreak(weak: true)
#include "5_regular_expressions/regexprep.typ"
#pagebreak(weak: true)
#include "5_regular_expressions/regexptranslate.typ"
#pagebreak(weak: true)
#include "6_join_split_extract/extract.typ"
#pagebreak(weak: true)
#include "6_join_split_extract/extractAfter.typ"
#pagebreak(weak: true)
#include "6_join_split_extract/extractBefore.typ"
#pagebreak(weak: true)
#include "6_join_split_extract/extractBetween.typ"
#pagebreak(weak: true)
#include "6_join_split_extract/join.typ"
#pagebreak(weak: true)
#include "6_join_split_extract/split.typ"
#pagebreak(weak: true)
#include "6_join_split_extract/splitlines.typ"
#pagebreak(weak: true)
#include "6_join_split_extract/strjoin.typ"
#pagebreak(weak: true)
#include "6_join_split_extract/strread.typ"
#pagebreak(weak: true)
#include "6_join_split_extract/strsplit.typ"
#pagebreak(weak: true)
#include "6_join_split_extract/strtok.typ"
#pagebreak(weak: true)
#include "6_join_split_extract/strvcat.typ"
#pagebreak(weak: true)
#include "7_edit_text/deblank.typ"
#pagebreak(weak: true)
#include "7_edit_text/insertAfter.typ"
#pagebreak(weak: true)
#include "7_edit_text/insertBefore.typ"
#pagebreak(weak: true)
#include "7_edit_text/lower.typ"
#pagebreak(weak: true)
#include "7_edit_text/pad.typ"
#pagebreak(weak: true)
#include "7_edit_text/reverse.typ"
#pagebreak(weak: true)
#include "7_edit_text/strip.typ"
#pagebreak(weak: true)
#include "7_edit_text/strjust.typ"
#pagebreak(weak: true)
#include "7_edit_text/strtrim.typ"
#pagebreak(weak: true)
#include "7_edit_text/tolower.typ"
#pagebreak(weak: true)
#include "7_edit_text/toupper.typ"
#pagebreak(weak: true)
#include "7_edit_text/upper.typ"
#pagebreak(weak: true)
#include "8_compare_text/matches.typ"
#pagebreak(weak: true)
#include "8_compare_text/strcmp.typ"
#pagebreak(weak: true)
#include "8_compare_text/strcmpi.typ"
#pagebreak(weak: true)
#include "8_compare_text/strncmp.typ"
#pagebreak(weak: true)
#include "8_compare_text/strncmpi.typ"
]
