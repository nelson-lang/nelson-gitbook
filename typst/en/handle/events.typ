#import "nelson_help.typ": *

= events <handle:events>

Returns event names for a classdef object or class.

== Syntax

- #raw("c = events(obj)");
- #raw("c = events(objArray)");
- #raw("c = events(className)");

== Input argument

/ obj: a classdef object or handle
/ objArray: a classdef object array or handle array
/ className: a class name as a string, including package-qualified names

== Output argument

/ c: a cell of strings

== Description

#strong[events]; returns public event names declared by a classdef class.

 Hidden events and events with non-public listener access are omitted from the returned list.

 For classdef object arrays, #strong[events]; returns events of the array element class.

 Handle classes also expose the #strong[ObjectBeingDestroyed]; event.


== Example

List events declared by a classdef handle array.

``````matlab
clear classes
d = [tempdir(), 'nelson_help_events/'];
mkdir(d);
filewrite([d, '/NelsonHelpEventCounter.m'], ["classdef NelsonHelpEventCounter < handle"; "  events"; "    CountChanged"; "  end"; "  methods"; "    function trigger(obj)"; "      notify(obj, 'CountChanged');"; "    end"; "  end"; "end"]);
addpath(d);
a = NelsonHelpEventCounter();
b = NelsonHelpEventCounter();
e = events([a, b]);
delete([a, b])
``````


== See also

#nlink(<handle:addlistener>)[addlistener];, #nlink(<handle:notify>)[notify];, #nlink(<interpreter:classdef>)[classdef];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [classdef support added],
  [2.0.0], [classdef object array support documented],
)

// Author: Allan CORNET
