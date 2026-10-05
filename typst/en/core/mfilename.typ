#import "nelson_help.typ": *

= mfilename <core:mfilename>

Name of the currently running file.

== Syntax

- #raw("name = mfilename()");
- #raw("name = mfilename('fullpath')");
- #raw("name = mfilename('fullpathext')");

== Input argument

/ option: optional string: 'fullpath' returns the path without extension, and 'fullpathext' includes the extension.

== Output argument

/ name: string with the current script or function name. The result is empty when no file is executing.

== Description

mfilename returns the name of the currently running function or script.

 With an option, it can return a path-qualified form supported by Nelson.


== Used function(s)

nfilename

== Example

Query the current file name. In the command window, the result is empty.

``````matlab
name = mfilename()
nameWithPath = mfilename('fullpath')
``````


== See also

#nlink(<core:nfilename>)[nfilename];, #nlink(<core:run>)[run];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
