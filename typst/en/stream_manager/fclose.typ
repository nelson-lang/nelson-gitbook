#import "nelson_help.typ": *

= fclose <stream_manager:fclose>

Close an opened file.

== Syntax

- #raw("fclose(fid)");
- #raw("fclose('all')");
- #raw("status = fclose(fid)");
- #raw("status = fclose('all')");

== Input argument

/ fid: a file descriptor

== Output argument

/ status: an integer value: 0 if file is closed or -1 if not.

== Description

#strong[fclose]; must be used to close a file opened by#strong[fopen];.

 #strong[fclose('all')]; closes all opened file with#strong[fopen];.


== Example

``````matlab


fd = fopen([tempdir(), filesep(), 'fclose_tst'],'wt');
status = fclose(fd)
status = fclose(fd)


``````


== See also

#nlink(<stream_manager:fopen>)[fopen];, #nlink(<stream_manager:fread>)[fread];, #nlink(<stream_manager:feof>)[feof];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
