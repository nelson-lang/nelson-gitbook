#import "nelson_help.typ": *

= jsonencode <json:jsonencode>

encodes a Nelson object into a JSON string.

== Syntax

- #raw("res = jsonencode(obj)");
- #raw("res = jsonencode(obj, 'ConvertInfAndNaN', true_or_false)");

== Input argument

/ obj: a Nelson object: struct, cell, matrix.
/ true\_or\_false: a logical: if true, Inf, NaN are converted to 'Inf' or 'Nan'.

== Output argument

/ res: a string: JSON text.

== Description

#strong[jsonencode]; converts a Nelson variable to JSON text.

 #strong[jsonencode]; does not support complex numbers, sparse arrays, function handle, and others handle.

 #strong[jsonencode]; can be overloaded to manage your own type.

 By default#strong[jsonencode]; Inf values are converted to the string "Inf", NaN values are converted to 'null'.

 Warning: The shape of a matrix and data type are not always preserved.


== Bibliography

http:\/\/www.rfc-editor.org\/rfc\/rfc7159.txt

== Example

``````matlab
field1 = 'f1';  value1 = zeros(1,10);
field2 = 'f2';  value2 = {'a', 'b'};
field3 = 'f3';  value3 = {pi, pi*pi};
field4 = 'f4';  value4 = {'fourth'};
s = struct(field1,value1,field2,value2,field3,value3,field4,value4);
r = jsonencode(s)
filewrite([tempdir(), 'example.json'], r);

``````


== See also

#nlink(<json:jsondecode>)[jsondecode];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
