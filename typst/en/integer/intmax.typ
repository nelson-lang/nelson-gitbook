#import "nelson_help.typ": *

= intmax <integer:intmax>

Return the largest integer that can be represented in an integer type.

== Syntax

- #raw("imax = intmax()");
- #raw("imax = intmax(classname)");

== Input argument

/ classname: a string: by default: int32

== Output argument

/ imax: largest integer

== Description

#strong[imax \= intmax(classname)]; the largest integer that can be represented in an integer type.

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
A = intmax('int64')
res = class(A)
``````

``````matlab
A = intmax('uint32')
res = class(C)
``````


== See also

#nlink(<integer:intmin>)[intmin];, #nlink(<types:class>)[class];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
