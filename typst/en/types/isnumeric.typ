#import "nelson_help.typ": *

= isnumeric <types:isnumeric>

Return true if variable var is a numeric array.

== Syntax

- #raw("res = isnumeric(var)");

== Input argument

/ var: a variable

== Output argument

/ res: a logical: true or false

== Description

#strong[isnumeric]; returns a logical 1 if the argument is a numeric array and a logical 0 otherwise.List of numeric types:

 #strong[single]; : single precision

 #strong[double]; : double precision

 #strong[int8]; : 8 bit signed integer

 #strong[int16]; : 16 bit signed integer

 #strong[int32]; : 32 bit signed integer

 #strong[int64]; : 64 bit signed integer

 #strong[uint8]; : 8 bit unsigned integer

 #strong[uint16]; : 16 bit unsigned integer

 #strong[uint32]; : 32 bit unsigned integer

 #strong[uint64]; : 64 bit unsigned integer


== Examples

``````matlab
A = 1;
res = isnumeric(A)
``````

``````matlab
B = single(1+i);
res = isnumeric(B)
``````

``````matlab
C = logical(1);
res = isnumeric(C)
``````


== See also

#nlink(<types:islogical>)[islogical];, #nlink(<types:isinteger>)[isinteger];, #nlink(<types:isdouble>)[isdouble];, #nlink(<types:issingle>)[issingle];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
