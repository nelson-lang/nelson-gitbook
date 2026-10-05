#import "nelson_help.typ": *

= ftell <stream_manager:ftell>

Returns the offset of the current byte relative to the beginning of a file.

== Syntax

- #raw("p = ftell(fid)");

== Input argument

/ fid: a file descriptor

== Output argument

/ p: an integer value: position of the file pointer as the number of characters from the beginning of the file.

== Description

#strong[ftell]; returns the offset of the current byte relative to the beginning of the file associated with the named stream fid.


== Example

``````matlab
TXT = 'example about ftell.';
fileID = fopen([tempdir(), 'ftell.txt'],'wt');
fprintf(fileID, TXT);
p1 = ftell(fileID)
fseek(fileID, SEEK_CUR, 'bof');
p2 = ftell(fileID)
status = fclose(fileID);
``````


== See also

#nlink(<stream_manager:fopen>)[fopen];, #nlink(<stream_manager:fread>)[fprintf];, #nlink(<stream_manager:fclose>)[fclose];, #nlink(<stream_manager:fseek>)[fseek];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
