#import "nelson_help.typ": *

= jsonprettyprint <json:jsonprettyprint>

format an JSON string.

== Syntax

- #raw("res = jsonprettyprint(txt)");

== Input argument

/ txt: a valid JSON text.

== Output argument

/ res: a string: a formatted JSON text (human readable).

== Description

#strong[jsonprettyprint]; formats a JSON text string to be human readable.


== Example

``````matlab
field1 = 'f1';  value1 = zeros(1,10);
field2 = 'f2';  value2 = {'a', 'b'};
field3 = 'f3';  value3 = {pi, pi*pi};
field4 = 'f4';  value4 = {'fourth'};
s = struct(field1,value1,field2,value2,field3,value3,field4,value4);
r = jsonencode(s)
jsonprettyprint(r)

``````


== See also

#nlink(<json:jsondecode>)[jsondecode];, #nlink(<json:jsonencode>)[jsonencode];, #nlink(<stream_manager:filewrite>)[filewrite];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
