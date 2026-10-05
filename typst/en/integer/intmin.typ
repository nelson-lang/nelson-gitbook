#import "nelson_help.typ": *

= intmin <integer:intmin>

Return the smallest integer that can be represented in an integer type.

== Syntax

- #raw("imin = intmin()");
- #raw("imin = intmin(classname)");

== Input argument

/ classname: a string: by default: int32

== Output argument

/ imin: smallest integer

== Description

#strong[imin \= intmin(classname)]; the smallest integer that can be represented in an integer type.

 Supported values for the string #strong[classname]; are:

 'int8'

 'uint8'

 'int16'

 'uint16'

 'int32'

 'uint32'

 'int64'

 'uint64'


== Examples

``````matlab
A = intmin('int64')
res = class(A)
``````

``````matlab
A = intmin('uint32')
res = class(C)
``````


== See also

#nlink(<integer:intmax>)[intmax];, #nlink(<types:class>)[class];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
