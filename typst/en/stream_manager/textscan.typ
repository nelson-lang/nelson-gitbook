#import "nelson_help.typ": *

= textscan <stream_manager:textscan>

Read formatted data from a character vector, string or file.

== Syntax

- #raw("C = textscan(chr, format)");
- #raw("C = textscan(fid, format)");
- #raw("C = textscan(__, Name, Value)");
- #raw("[C, position] = textscan(__)");

== Input argument

/ chr: a character vector or string scalar to read from.
/ fid: a file identifier returned by fopen. Data is read from the current position to the end of the file.
/ format: a character vector describing the conversion specifiers applied to each field.
/ Name, Value: one or more name\/value option pairs.

== Output argument

/ C: a cell array with one cell per conversion specifier.
/ position: the number of characters read when scanning stopped.

== Description

#strong[textscan]; reads formatted data and returns a cell array #strong[C];. Each cell holds one output column collected across all repetitions of the format string, since the format is cycled over the whole input.

 Numeric conversion specifiers produce column vectors, while #strong[%s];, #strong[%q]; and #strong[%\[...\]]; produce cell arrays of character vectors.

 Supported conversion specifiers:

 #strong[%d]; signed integer (int32), #strong[%u]; unsigned integer (uint32), #strong[%f]; floating point (double), #strong[%s]; whitespace or delimiter separated text, #strong[%q]; optionally double quoted text, #strong[%c]; a fixed number of characters, #strong[%\[...\]]; and #strong[%\[^...\]]; character set scanning.

 A field width may be given (for example #strong[%5d]; or #strong[%3s];). A conversion prefixed with #strong[\*]; (for example #strong[%\*d];) is read but not stored. A size suffix selects the numeric class (#strong[%d8];, #strong[%d16];, #strong[%d32];, #strong[%d64];, #strong[%u8]; and #strong[%f32];). Literal text between specifiers must be matched in the input.

 Supported name\/value options:

 #strong[Delimiter]; a character vector, or a cell array of character vectors, used to separate fields.

 #strong[HeaderLines]; the number of leading lines to skip.

 #strong[CollectOutput]; when true, consecutive columns of the same class are concatenated into a single array.

 #strong[EmptyValue]; the numeric value used for empty numeric fields.

 #strong[Whitespace]; the characters treated as whitespace.

 #strong[MultipleDelimsAsOne]; when true, consecutive delimiters are treated as a single delimiter.

 #strong[CommentStyle]; a comment marker, or a start and end pair, whose text is ignored.

 #strong[TreatAsEmpty]; text values that are treated as empty numeric fields.

 #strong[EndOfLine]; accepted for compatibility; end of line characters are always treated as whitespace separators.


== Examples

``````matlab
C = textscan('1 2 3', '%d')
``````

``````matlab
C = textscan('a,b,c', '%s', 'Delimiter', ',');
C{1}
``````

``````matlab
C = textscan('name:42', '%[^:]:%d')
``````


== See also

#nlink(<stream_manager:sscanf>)[sscanf];, #nlink(<stream_manager:fscanf>)[fscanf];, #nlink(<stream_manager:fopen>)[fopen];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
