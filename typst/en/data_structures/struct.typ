#import "nelson_help.typ": *

= struct <data_structures:struct>

Create a structure or convert an object to a structure.

== Syntax

- #raw("st = struct()");
- #raw("st = struct([])");
- #raw("st = struct(object)");
- #raw("st = struct(field, value)");
- #raw("st = struct(field, value, field2, value2, ..., fieldn, valuen)");

== Input argument

/ field, field2, ... , fieldn: strings: field names. Valid names follow variable identifier rules.
/ value, value2, ..., valuen: values of any Nelson type
/ object: an old-style object or a classdef object

== Output argument

/ st: a structure

== Description

#strong[struct]; creates a structure from field\/value pairs.

 #strong[struct(object)]; converts an object to a structure containing its public fields or public classdef properties.

 For classdef handle objects, #strong[struct]; reads the current public property values from the handle object.


== Examples

Create a structure from field\/value pairs.

``````matlab
date_st = struct('day', 15, 'month', 'August', 'year', 1974)
``````

Convert a classdef object to a structure.

``````matlab
clear classes
d = [tempdir(), 'nelson_help_struct/'];
mkdir(d);
filewrite([d, '/NelsonHelpStructPoint.m'], ["classdef NelsonHelpStructPoint"; "  properties"; "    X = 0"; "    Y = 0"; "  end"; "end"]);
addpath(d);
obj = NelsonHelpStructPoint();
obj.X = 3;
obj.Y = 4;
st = struct(obj)
``````


== See also

#nlink(<data_structures:cell>)[cell];, #nlink(<data_structures:fieldnames>)[fieldnames];, #nlink(<types:isstruct>)[isstruct];, #nlink(<interpreter:classdef>)[classdef];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.3.0], [Scalar string allowed as field name.],
  [2.0.0], [classdef object conversion documented],
)

// Author: Allan CORNET
