#import "nelson_help.typ": *

= diff\_file <files_folders_functions:diff_file>

diff two files or strings.

== Syntax

- #raw("res = diff(filename_1, filename_2, with_eol)");

== Input argument

/ filename\_1: a string: a filename.
/ filename\_2: a string: a filename.
/ with\_eol: a logical: with end of line considered or not (true by default).

== Output argument

/ res: a string: ' ' if no diff detected.
/ msg: a string: error message

== Description

#strong[diff\_file]; compares two files and returns diff as unified format.

 if compared files are equals, res is an empty string.


== Example

``````matlab
res = diff_file([nelsonroot(), '/etc/startup.m'], [nelsonroot(), '/etc/startup.m'])
res = diff_file([nelsonroot(), '/etc/startup.m'], [nelsonroot(), '/etc/finish.m'])
``````


== See also

#nlink(<files_folders_functions:isdir>)[isdir];, #nlink(<files_folders_functions:isfile>)[isfile];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
