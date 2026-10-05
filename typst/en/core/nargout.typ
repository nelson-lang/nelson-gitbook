#import "nelson_help.typ": *

= nargout <core:nargout>

Returns the number of output arguments.

== Syntax

- #raw("R = nargout()");
- #raw("R = nargout(function_name)");
- #raw("R = nargout(function_handle)");

== Input argument

/ function\_name: a string: function name
/ function\_handle: a function handle

== Output argument

/ R: an integer value: number of output argument

== Description

#strong[nargout]; returns the number of output arguments of an function.

 If the last output argument of the function is #strong[varargout]; the returned value is negative.


== Examples

With an macro function:

``````matlab
nargout('cellstr')
``````

With an builtin function:

``````matlab
nargout('cos')
``````


== See also

#nlink(<core:nargin>)[nargin];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
