#import "nelson_help.typ": *

= isa <types:isa>

Return true if a variable has the requested class or type.

== Syntax

- #raw("res = isa(var, className)");

== Input argument

/ var: a variable
/ className: a class or type name as a string

== Output argument

/ res: a logical: true or false

== Description

#strong[isa]; returns logical 1 when #strong[var]; is an instance of #strong[className];, and logical 0 otherwise.

 #strong[className]; can be a Nelson type name such as #strong[double];, #strong[cell];, #strong[numeric];, #strong[float];, or #strong[integer];.

 For classdef objects, #strong[isa]; accepts the class name and supported superclass names, including #strong[handle]; for handle classes.

 For sparse arrays, #strong[isa]; tests the stored value class, such as #strong[double]; or #strong[logical];. Use #strong[issparse]; to test sparse storage.


== Examples

Test a numeric type.

``````matlab
A = 3;
res = isa(A, 'double')
``````

Test the stored value class of a sparse array.

``````matlab
S = sparse([2 0 3]);
isDouble = isa(S, 'double')
isSparse = issparse(S)
``````

Test a classdef handle object.

``````matlab
clear classes
d = [tempdir(), 'nelson_help_isa/'];
mkdir(d);
filewrite([d, '/NelsonHelpIsaCounter.m'], ["classdef NelsonHelpIsaCounter < handle"; "  properties"; "    Count = 0"; "  end"; "end"]);
addpath(d);
obj = NelsonHelpIsaCounter();
isCounter = isa(obj, 'NelsonHelpIsaCounter')
isHandle = isa(obj, 'handle')
delete(obj)
``````


== See also

#nlink(<types:class>)[class];, #nlink(<types:issparse>)[issparse];, #nlink(<types:isobject>)[isobject];, #nlink(<interpreter:classdef>)[classdef];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [classdef object support documented],
  [2.0.0], [sparse arrays are tested by stored value class],
)

// Author: Allan CORNET
