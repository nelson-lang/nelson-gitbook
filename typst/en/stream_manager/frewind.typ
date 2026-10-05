#import "nelson_help.typ": *

= frewind <stream_manager:frewind>

Set position of stream to the beginning.

== Syntax

- #raw("frewind(fid)");

== Input argument

/ fid: an integer value: file descriptor

== Description

#strong[frewind]; puts the pointer at the beginning of file


== Example

``````matlab

fileID = fopen([tempdir(), 'frewind.txt'],'wt');
fprintf(fileID, 'son is beautiful.');
frewind(fileID);
fprintf(fileID, 'sun');
fclose(fileID);
R = fileread([tempdir(), 'frewind.txt'])
``````


== See also

#nlink(<stream_manager:fclose>)[fclose];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
