#import "nelson_help.typ": *

= smartindent <interpreter:smartindent>

Format and indent a Nelson file

== Syntax

- #raw("smartindent(filename)");
- #raw("smartindent(filename, indentsize)");
- #raw("smartindent(filename, indentsize, dobackup)");
- #raw("smartindent(filename, indentsize, dobackup, fullformat)");

== Input argument

/ filename: a string: filename to format.
/ indentsize: an integer value \> 0. default: 2
/ dobackup: a logical: false by default. If true, creates a .bak file.
/ fullformat: a logical: true by default. If false, only leading indentation is changed.

== Description

#strong[smartindent]; validates, formats, and indents Nelson code without executing it. By default it normalizes leading indentation, common operator spacing, separators, and classdef block indentation. Set #strong[fullformat]; to false to only update leading indentation.

 Full formatting keeps reference dots attached to package names, object members, and structure fields, including dynamic fields such as #strong[value.(name)];. Elementwise operators keep their operator spacing.

 Class member block names such as #strong[properties]; and #strong[methods]; remain ordinary identifiers in executable statements. They introduce indentation blocks only in the class body.

 Block-comment markers inside character arrays, strings, and line comments are preserved as text. A real unterminated block comment is rejected before the file is written.

 Blocks opened and closed on the same line, such as #strong[if ready, value \= 1; end];, do not increase the indentation of following lines. An #strong[end]; used in array indexing is not a block terminator.


== See also

#nlink(<text_editor:edit>)[edit];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [fullformat parameter added],
)

// Author: Allan CORNET
