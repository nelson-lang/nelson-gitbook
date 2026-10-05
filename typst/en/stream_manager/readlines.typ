#import "nelson_help.typ": *

= readlines <stream_manager:readlines>

Read lines of a text file as a string array.

== Syntax

- #raw("S = readlines(filename)");
- #raw("S = readlines(filename, Name, Value)");

== Input argument

/ filename: a character vector or a string scalar: name of the text file to read.
/ LineEnding: a character vector, a string array or a cell array of character vectors: line terminators. Default: {'\\n', '\\r', '\\r\\n'}. Escape sequences \\n, \\r, \\t, \\b, \\f, \\v and \\\\ are interpreted.
/ Whitespace: a character vector or a string scalar: characters treated as whitespace. Default: ' \\b\\t'.
/ WhitespaceRule: 'preserve' (default), 'trim', 'trimleading' or 'trimtrailing': removal of the leading and\/or trailing whitespace of each line.
/ EmptyLineRule: 'read' (default), 'skip' or 'error': handling of the empty lines. A line that contains only whitespace is empty.
/ Encoding: a character vector or a string scalar: '' (default, the encoding is detected), 'system', 'UTF-8', 'ISO-8859-1', 'windows-1251', 'windows-1252', ...

== Output argument

/ S: a N-by-1 string array: one element per line.

== Description

#strong[S \= readlines(filename)]; reads the text file #strong[filename]; and returns its lines as a column string array. The line terminators are not part of the lines.

 By default, a line ends with a line feed, a carriage return or a carriage return followed by a line feed. When the file ends with a line terminator, the last element of #strong[S]; is an empty string. An empty file returns a 1-by-1 empty string.

 With #strong[EmptyLineRule]; set to 'skip', empty lines are removed. With 'error', an error is raised on the first empty line, giving its row. In both cases, the empty text after a final line terminator is ignored.

 A UTF-8 byte order mark at the beginning of the file is not returned.


== Example

Read the lines of a text file.

``````matlab
filename = [tempdir(), 'example_readlines.txt'];
filewrite(filename, ["  Paris"; ""; "  Berlin"; "Rome  "]);
S = readlines(filename)
S = readlines(filename, 'EmptyLineRule', 'skip')
S = readlines(filename, 'WhitespaceRule', 'trim')
``````


== See also

#nlink(<stream_manager:fileread>)[fileread];, #nlink(<stream_manager:fgetl>)[fgetl];, #nlink(<stream_manager:filewrite>)[filewrite];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
