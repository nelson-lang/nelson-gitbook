#import "nelson_help.typ": *

= ferror <stream_manager:ferror>

Test for i\/o read\/write errors.

== Syntax

- #raw("msg = ferror(fid)");
- #raw("[msg, code] = ferror(fid)");
- #raw("ferror(fid, 'clear')");

== Input argument

/ fid: a file descriptor

== Output argument

/ code: an integer value: 0 if no error. negative value if an error is detected.
/ msg: an character vector: error message equivalent to error code.

== Description

#strong[ferror]; inquires about file error status.

 #strong[ferror(fid, 'clear')]; clears the error indicator for the specified file.

 For more help about returned message, consult C run-time library manual for further details.


== Example

``````matlab
filename = [tempdir(), 'test_ferror.csv'];
fid = fopen(filename, 'w');
res = fgets(fid);
[msg, code] = ferror(fid)

``````


== See also

#nlink(<stream_manager:fopen>)[fopen];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
