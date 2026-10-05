#import "nelson_help.typ": *

= nargin <core:nargin>

Returns the number of input arguments.

== Syntax

- #raw("R = nargin()");
- #raw("R = nargin(function_name)");
- #raw("R = nargin(function_handle)");

== Input argument

/ function\_name: a string: function name
/ function\_handle: a function handle

== Output argument

/ R: an integer value: number of input arguments

== Description

#strong[nargin]; returns the number of input arguments of a function.

 When called without an input argument, #strong[nargin]; returns the number of input arguments used to call the currently executing function.

 When called with a function name or function handle, #strong[nargin]; returns the number of input arguments declared by that function.

 If the last declared input argument is #strong[varargin];, the returned value is negative. Its absolute value is the total number of declared input arguments, including #strong[varargin];. For example, for a function declared as #strong[f(a, b, varargin)];, #strong[nargin('f')]; returns #strong[-3];.


== Examples

With an macro function:

``````matlab
nargin('getfield')
``````

With an builtin function:

``````matlab
nargin('cos')
``````


== See also

#nlink(<core:nargout>)[nargout];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
