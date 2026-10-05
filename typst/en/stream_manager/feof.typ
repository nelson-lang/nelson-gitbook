#import "nelson_help.typ": *

= feof <stream_manager:feof>

Checks end of file.

== Syntax

- #raw("status = feof(fid)");

== Input argument

/ fid: a file descriptor

== Output argument

/ status: an integer value: 1 if file is closed or 0 if not.

== Description

#strong[feof]; checks if end of file has been reached.


== Example

``````matlab
fid = fopen([nelsonroot(), '/etc/startup.m'], 'rt');
feof(fid)
while ~feof(fid)
  tline = fgetl(fid);
  disp(tline);
end
feof(fid)
fclose(fid);
``````


== See also

#nlink(<stream_manager:fopen>)[fopen];, #nlink(<stream_manager:fgetl>)[fgetl];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
