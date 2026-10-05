#import "nelson_help.typ": *

= fsize <stream_manager:fsize>

Returns size of an opened file.

== Syntax

- #raw("s = fsize(fid)");

== Input argument

/ fid: a file descriptor

== Output argument

/ s: an integer value: size of a file.

== Description

#strong[fsize]; returns th size of a file opened by #strong[fopen];.


== Example

``````matlab
TXT = 'example about fsize.';
fileID = fopen([tempdir(), 'fsize.txt'],'wt');
fprintf(fileID, TXT);
fsize(fileID)
length(TXT)
status = fclose(fileID);
``````


== See also

#nlink(<stream_manager:fopen>)[fopen];, #nlink(<stream_manager:fread>)[fprintf];, #nlink(<stream_manager:fclose>)[fclose];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
