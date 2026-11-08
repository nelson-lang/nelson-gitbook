#import "nelson_help.typ": *

= inferiorto <types:inferiorto>

Declare inferior class precedence.

== Syntax

- #raw("inferiorto(class1, ...)");

== Input argument

/ class1, ...: class names, as character vectors.

== Description

#strong[inferiorto(class1, ...)]; declares that the class being defined has lower precedence than the named classes when dispatching overloaded operators.

 It is called from a class constructor.


== Example

``````matlab
inferiorto('double')
``````


== See also

#nlink(<types:superiorto>)[superiorto];, #nlink(<types:class>)[class];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
