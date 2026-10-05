#import "nelson_help.typ": *

= isclass <types:isclass>

Return true if variable var is a class object.

== Syntax

- #raw("res = isclass(var)");

== Input argument

/ var: a variable

== Output argument

/ res: a logical: true or false

== Description

#strong[isclass]; returns a logical 1 if the argument is a class object and a logical 0 otherwise.
== Example

``````matlab
A = 3;
res = isclass(A)
addpath([nelsonroot(), '/modules/overload/examples/complex']);
c = complexObj(3,4);
res = isclass(c)
``````


== See also

#nlink(<types:class>)[class];, #nlink(<types:isstruct>)[isstruct];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
