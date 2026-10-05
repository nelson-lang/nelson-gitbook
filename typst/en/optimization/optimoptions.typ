#import "nelson_help.typ": *

= optimoptions <optimization:optimoptions>

Create solver options.

== Syntax

- #raw("options = optimoptions(solver)");
- #raw("options = optimoptions(solver, name, value)");

== Input argument

/ solver: solver name, function handle, or optimization problem.
/ name, value: option name and value pairs.

== Output argument

/ options: solver options object.

== Description

#strong[optimoptions]; validates option names against the selected solver and returns an object convertible to a structure for direct solvers.


== Used function(s)

optimset

== Bibliography

P. E. Gill, W. Murray and M. H. Wright, Practical Optimization, Academic Press, 1981.

== Example

``````matlab
opts = optimoptions('fsolve', 'TolFun', 1e-8);
[x, fval] = fsolve(@(x) x - 3, 0, opts)

``````


== See also

#nlink(<optimization:optimset>)[optimset];, #nlink(<optimization:optimget>)[optimget];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
