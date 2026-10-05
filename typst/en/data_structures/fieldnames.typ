#import "nelson_help.typ": *

= fieldnames <data_structures:fieldnames>

Return structure field names or public classdef property names.

== Syntax

- #raw("names = fieldnames(st)");
- #raw("names = fieldnames(obj)");
- #raw("names = fieldnames(objArray)");

== Input argument

/ st: a structure
/ obj: a classdef object or handle object
/ objArray: a classdef object array or handle array

== Output argument

/ names: a cell of strings

== Description

#strong[fieldnames(st)]; returns a cell of strings with the field names of the input structure.

 For classdef objects, #strong[fieldnames(obj)]; returns the same public property names as #strong[properties(obj)];.

 For classdef object arrays, the returned names are the public properties of the array element class.


== Example

List public property names of a classdef object array.

``````matlab
clear classes
d = [tempdir(), 'nelson_help_fieldnames/'];
mkdir(d);
filewrite([d, '/NelsonHelpFieldPoint.m'], ["classdef NelsonHelpFieldPoint"; "  properties"; "    X = 0"; "    Y = 0"; "  end"; "end"]);
addpath(d);
a = NelsonHelpFieldPoint();
b = NelsonHelpFieldPoint();
names = fieldnames([a, b])
``````


== See also

#nlink(<data_structures:getfield>)[getfield];, #nlink(<handle:properties>)[properties];, #nlink(<interpreter:classdef>)[classdef];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [classdef object support added],
)

// Author: Allan CORNET
