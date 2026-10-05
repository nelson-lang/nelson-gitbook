#import "nelson_help.typ": *

= notify <handle:notify>

Notifies listeners of a classdef event.

== Syntax

- #raw("notify(obj, eventName)");
- #raw("notify(obj, eventName, eventData)");

== Input argument

/ obj: a classdef handle object
/ eventName: an event name as a string
/ eventData: optional event data passed to listener callbacks

== Description

#strong[notify]; runs listener callbacks registered for a classdef handle object event.

 Callbacks receive the source object and the supplied event data.


== Example

Notify listeners of an event.

``````matlab
d = [tempdir(), 'nelson_help_notify/'];
mkdir(d);
filewrite([d, '/NelsonHelpNotifyCounter.m'], ["classdef NelsonHelpNotifyCounter < handle"; "  events"; "    CountChanged"; "  end"; "end"]);
addpath(d);
counter = NelsonHelpNotifyCounter();
lh = addlistener(counter, 'CountChanged', @(src, eventData) disp('changed'));
notify(counter, 'CountChanged');
delete(lh);
delete(counter)
``````


== See also

#nlink(<handle:addlistener>)[addlistener];, #nlink(<handle:events>)[events];, #nlink(<interpreter:classdef>)[classdef];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [classdef event notification support added],
)

// Author: Allan CORNET
