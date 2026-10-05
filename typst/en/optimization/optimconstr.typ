#import "nelson_help.typ": *

= optimconstr <optimization:optimconstr>

Create an optimization constraint placeholder.

== Syntax

- #raw("c = optimconstr()");
- #raw("c = optimconstr(lhs, relation, rhs)");

== Input argument

/ lhs, rhs: left and right expressions.
/ relation: constraint relation: \<\=, \=\= or \>\=.

== Output argument

/ c: optimization constraint object.

== Description

#strong[optimconstr]; creates constraints used by optimization problems. Relational operators on expressions also create constraints.


== Used function(s)

optimproblem optimexpr

== Bibliography

P. E. Gill, W. Murray and M. H. Wright, Practical Optimization, Academic Press, 1981.

== Example

``````matlab
x = optimvar('x');
c = optimconstr(x, '<=', 5)

``````


== See also

#nlink(<optimization:optimproblem>)[optimproblem];, #nlink(<optimization:prob2struct>)[prob2struct];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
