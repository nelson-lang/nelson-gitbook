#import "nelson_help.typ": *

= nargchk <core:nargchk>

Validate number of input arguments.

== Syntax

- #raw("msg = nargchk(minArgs, maxArgs, n)");
- #raw("msg = nargchk(minArgs, maxArgs, n, 'string')");
- #raw("msgstruct = nargchk(minArgs, maxArgs, n, 'struct')");

== Input argument

/ minArgs: minimum number of accepted inputs (scalar integer value).
/ maxArgs: maximum number of accepted inputs (scalar integer value).
/ n: number of supplied inputs to check, usually #strong[nargin]; (scalar integer value).
/ 'string' or 'struct': output type: #strong['string']; (default) returns a character message, #strong['struct']; returns an error structure.

== Output argument

/ msg: a character row vector error message, or #strong['']; (empty) if #strong[n]; is in the range #strong[\[minArgs, maxArgs\]];.
/ msgstruct: a structure with fields #strong[message]; and #strong[identifier]; (a #strong[1x0]; empty structure if #strong[n]; is in range).

== Description

#strong[nargchk]; checks whether the number of input arguments #strong[n]; falls within the range #strong[\[minArgs, maxArgs\]];.

 It returns the message #strong['Not enough input arguments.']; when #strong[n]; is less than #strong[minArgs];, #strong['Too many input arguments.']; when #strong[n]; is greater than #strong[maxArgs];, and an empty result otherwise.

 It is typically used as #strong[error(nargchk(minArgs, maxArgs, nargin))]; at the start of a function.

 #strong[nargchk]; is deprecated and kept for compatibility with legacy code. Use #strong[narginchk]; instead in new code.


== Examples

Not enough input arguments:

``````matlab
msg = nargchk(2, 3, 1)
``````

Too many input arguments:

``````matlab
msg = nargchk(1, 2, 3)
``````

In range returns an empty message:

``````matlab
msg = nargchk(1, 3, 2)
``````


== See also

#nlink(<core:narginchk>)[narginchk];, #nlink(<core:nargoutchk>)[nargoutchk];, #nlink(<core:nargin>)[nargin];, #nlink(<error_manager:error>)[error];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
