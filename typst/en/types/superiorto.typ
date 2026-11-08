#import "nelson_help.typ": *

= superiorto <types:superiorto>

Declare superior class precedence.

== Syntax

- #raw("superiorto(class1, ...)");

== Input argument

/ class1, ...: class names, as character vectors.

== Description

#strong[superiorto(class1, ...)]; declares that the class being defined has higher precedence than the named classes when dispatching overloaded operators.

 It is called from a class constructor.


== Example

``````matlab
superiorto('double')
``````


== See also

#nlink(<types:inferiorto>)[inferiorto];, #nlink(<types:class>)[class];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
