#import "nelson_help.typ": *

= isobject <types:isobject>

Return true if a variable is an object.

== Syntax

- #raw("res = isobject(var)");

== Input argument

/ var: a variable

== Output argument

/ res: a logical: true or false

== Description

#strong[isobject]; returns logical 1 if #strong[var]; is a Nelson object and logical 0 otherwise.

 Classdef value objects and classdef handle objects are reported as objects.


== Example

Test classdef value and handle objects.

``````matlab
clear classes
d = [tempdir(), 'nelson_help_isobject/'];
mkdir(d);
filewrite([d, '/NelsonHelpIsObjectPoint.m'], ["classdef NelsonHelpIsObjectPoint"; "  properties"; "    X = 0"; "  end"; "end"]);
filewrite([d, '/NelsonHelpIsObjectCounter.m'], ["classdef NelsonHelpIsObjectCounter < handle"; "  properties"; "    Count = 0"; "  end"; "end"]);
addpath(d);
p = NelsonHelpIsObjectPoint();
h = NelsonHelpIsObjectCounter();
isPointObject = isobject(p)
isHandleObject = isobject(h)
delete(h)
``````


== See also

#nlink(<types:isa>)[isa];, #nlink(<types:ishandle>)[ishandle];, #nlink(<interpreter:classdef>)[classdef];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [classdef value and handle object support documented],
)

// Author: Allan CORNET
