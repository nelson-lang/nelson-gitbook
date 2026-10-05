#import "nelson_help.typ": *

= nfilename <core:nfilename>

Returns the name of the currently executing file.

== Syntax

- #raw("R = nfilename()");
- #raw("R = nfilename('fullpath')");
- #raw("R = nfilename('fullpathext')");

== Output argument

/ R: a string: the path of current function

== Description

#strong[R \= nfilename()]; returns the name of the currently executing file.

 #strong[nfilename()]; called from outside an nlf file returns an empty string.

 With the input argument 'fullpathext', the string includes the directory part of the macro filename, and the filename extension.

 With the input argument 'fullpath', the string includes the directory part of the macro filename, but not the extension.

 #strong[mfilename]; is an alias on #strong[nfilename]; added for basic script compatibility.


== See also

#nlink(<core:nargin>)[nargin];, #nlink(<core:nargout>)[nargout];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
