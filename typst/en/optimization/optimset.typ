#import "nelson_help.typ": *

= optimset <optimization:optimset>

Create or edit optimization option structures.

== Syntax

- #raw("options = optimset()");
- #raw("options = optimset(name, value)");
- #raw("options = optimset(oldopts, name, value)");

== Input argument

/ name, value: option name and value pairs.
/ oldopts: existing option structure.

== Output argument

/ options: option structure.

== Description

#strong[optimset]; creates a structure accepted by the direct solvers in this module. Option names support unambiguous abbreviations.


== Bibliography

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

== Example

``````matlab
opts = optimset('TolX', 1e-8, 'Display', 'off')
tol = optimget(opts, 'TolX')

``````


== See also

#nlink(<optimization:optimget>)[optimget];, #nlink(<optimization:optimoptions>)[optimoptions];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
