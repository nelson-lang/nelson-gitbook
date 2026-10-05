#import "nelson_help.typ": *

= nargoutchk <core:nargoutchk>

Checks the number of output arguments.

== Syntax

- #raw("nargoutchk(minArgs, maxArgs)");
- #raw("msg = nargoutchk(minArgs, maxArgs, numArgs)");
- #raw("st = nargoutchk(minArgs, maxArgs, numArgs, 'struct')");

== Input argument

/ minArgs: minimum number of accepted outputs (scalar integer value).
/ maxArgs: maximum number of accepted outputs (scalar integer value).
/ numArgs: number of function outputs (scalar integer value).

== Output argument

/ msg: a string: error message.
/ st: a struct with error message and identifier.

== Description

#strong[nargoutchk]; checks the number of output arguments of an function.

 To ensure a minimum number of outputs while imposing no maximum limit, set #strong[maxArgs]; to #strong[inf];. For example,#strong[nargoutchk(2, inf)]; generates an error if fewer than two outputs are specified.


== Example

With an macro function:

``````matlab
nargoutchk(1, 2, 3)
nargoutchk(1, 2, 3, 'struct')
``````


== See also

#nlink(<core:nargin>)[nargout];, #nlink(<core:narginchk>)[narginchk];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.10.0], [nargoutchk(3, Inf) managed],
)

// Author: Allan CORNET
