#import "nelson_help.typ": *

= superclasses <handle:superclasses>

Names of the superclasses of a class.

== Syntax

- #raw("s = superclasses(className)");
- #raw("s = superclasses(obj)");

== Input argument

/ className: a class name as a string or character vector.
/ obj: a classdef object or handle.

== Output argument

/ s: an N-by-1 cell array of char with the names of all visible superclasses, nearest ancestor first.

== Description

#strong[superclasses]; returns the names of all visible superclasses of a class, whether specified by name or by an object of that class. Ancestors are returned nearest first, and each name appears once.


== Example

Names of the superclasses of a class.

``````matlab
d = [tempdir(), 'nelson_help_superclasses/'];
mkdir(d);
filewrite([d, '/NelsonHelpBase.m'], ["classdef NelsonHelpBase"; "end"]);
filewrite([d, '/NelsonHelpDeriv.m'], ["classdef NelsonHelpDeriv < NelsonHelpBase"; "end"]);
addpath(d);
superclasses('NelsonHelpDeriv')
``````


== See also

#nlink(<handle:metaclass>)[metaclass];, #nlink(<handle:properties>)[properties];, #nlink(<handle:methods>)[methods];, #nlink(<interpreter:classdef>)[classdef];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
