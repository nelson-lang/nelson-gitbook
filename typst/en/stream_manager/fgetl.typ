#import "nelson_help.typ": *

= fgetl <stream_manager:fgetl>

Read string from a file without newline.

== Syntax

- #raw("res = fgetl(f)");

== Input argument

/ f: a file descriptor

== Output argument

/ res: a string or -1

== Description

Read string from a file, stopping after a newline or EOF have been read.

 If there is no more character to read, fgets will return -1.

 newline character removed of the string returned

 characters encoding uses #strong[fopen]; parameter.


== Example

``````matlab
fid = fopen([nelsonroot(), '/etc/startup.m']);

tline = fgetl(fid);
while ischar(tline)
    disp(tline)
    tline = fgetl(fid);
end

fclose(fid);
``````


== See also

#nlink(<stream_manager:fclose>)[fclose];, #nlink(<stream_manager:fopen>)[fopen];, #nlink(<stream_manager:fgets>)[fgets];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
