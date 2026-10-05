#import "nelson_help.typ": *

= isvalid <handle:isvalid>

Return true for valid handles.

== Syntax

- #raw("res = isvalid(h)");

== Input argument

/ h: a handle object or handle array

== Output argument

/ res: a logical scalar or logical array with the same size as h

== Description

#strong[isvalid]; returns true for valid handles and false for handles invalidated by delete.

 Clearing one variable does not invalidate other aliases to the same handle object.

 For handle arrays, the result has the same size as the input array.


== Example

Check a classdef handle array.

``````matlab
d = [tempdir(), 'nelson_help_isvalid/'];
mkdir(d);
filewrite([d, '/NelsonHelpIsValidCounter.m'], ["classdef NelsonHelpIsValidCounter < handle"; "  properties"; "    Count = 0"; "  end"; "end"]);
addpath(d);
h(3) = NelsonHelpIsValidCounter();
isvalid(h)
delete(h(2));
isvalid(h)
``````


== See also

#nlink(<types:isa>)[isa];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [handle array result documented],
)

// Author: Allan CORNET
