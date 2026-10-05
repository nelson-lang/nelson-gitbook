#import "nelson_help.typ": *

= optimget <optimization:optimget>

Read an optimization option value.

== Syntax

- #raw("value = optimget(options, name)");
- #raw("value = optimget(options, name, default)");

== Input argument

/ options: structure or solver options object.
/ name: option name.
/ default: fallback value.

== Output argument

/ value: option value or default.

== Description

#strong[optimget]; retrieves a named option, using a default when the option is absent or empty.


== Used function(s)

optimset

== Bibliography

J. Nocedal and S. J. Wright, Numerical Optimization, Springer, 2006.

== Example

``````matlab
opts = optimset('MaxIter', 200);
maxiter = optimget(opts, 'MaxIter', 100)

``````


== See also

#nlink(<optimization:optimset>)[optimset];, #nlink(<optimization:optimoptions>)[optimoptions];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
