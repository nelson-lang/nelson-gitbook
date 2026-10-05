#import "nelson_help.typ": *

= class <types:class>

Return a variable class name or create an old-style named object.

== Syntax

- #raw("name = class(var)");
- #raw("obj = class(st, className)");

== Input argument

/ var: a variable
/ st: a structure
/ className: a class name as a string

== Output argument

/ name: a string
/ obj: an old-style object of type #strong[className]; based on structure #strong[st];

== Description

#strong[class(var)]; returns the class name of #strong[var];.

 For sparse arrays, #strong[class]; returns the stored value class, such as #strong[double]; or #strong[logical];. Use #strong[issparse]; to test sparse storage.

 For classdef value and handle objects, #strong[class]; returns the classdef class name, including package qualification when applicable.

 #strong[class(st, className)]; preserves Nelson old-style object creation and is independent from classdef class definitions.


== Examples

Return a built-in class name.

``````matlab
A = 3;
name = class(A)
``````

Return the stored value class of a sparse array.

``````matlab
S = sparse([2 0 3]);
name = class(S)
tf = issparse(S)
``````

Return classdef value and handle class names.

``````matlab
clear classes
d = [tempdir(), 'nelson_help_class/'];
mkdir(d);
filewrite([d, '/NelsonHelpClassPoint.m'], ["classdef NelsonHelpClassPoint"; "  properties"; "    X = 0"; "  end"; "end"]);
filewrite([d, '/NelsonHelpClassCounter.m'], ["classdef NelsonHelpClassCounter < handle"; "  properties"; "    Count = 0"; "  end"; "end"]);
addpath(d);
p = NelsonHelpClassPoint();
h = NelsonHelpClassCounter();
pointClass = class(p)
handleClass = class(h)
delete(h)
``````


== See also

#nlink(<types:isa>)[isa];, #nlink(<types:issparse>)[issparse];, #nlink(<types:isobject>)[isobject];, #nlink(<interpreter:classdef>)[classdef];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [classdef value and handle object behavior documented],
  [2.0.0], [sparse arrays report their stored value class],
)

// Author: Allan CORNET
