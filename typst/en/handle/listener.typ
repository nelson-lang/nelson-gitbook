#import "nelson_help.typ": *

= listener <handle:listener>

Creates a classdef event listener.

== Syntax

- #raw("lh = listener(obj, eventName, callback)");
- #raw("lh = listener(obj, propertyName, propertyEvent, callback)");

== Input argument

/ obj: a classdef handle object
/ eventName: an event name as a string
/ callback: a function handle called with source and event data arguments

== Output argument

/ lh: an event.listener handle

== Description

#strong[listener]; is an alias for #strong[addlistener]; for classdef handle objects and observable properties.


== Example

Create a listener for an event.

``````matlab
d = [tempdir(), 'nelson_help_listener/'];
mkdir(d);
filewrite([d, '/NelsonHelpListenerCounter.m'], ["classdef NelsonHelpListenerCounter < handle"; "  events"; "    CountChanged"; "  end"; "  methods"; "    function trigger(obj)"; "      notify(obj, 'CountChanged');"; "    end"; "  end"; "end"]);
addpath(d);
counter = NelsonHelpListenerCounter();
lh = listener(counter, 'CountChanged', @(src, eventData) disp('changed'));
counter.trigger();
delete(lh);
delete(counter)
``````


== See also

#nlink(<handle:addlistener>)[addlistener];, #nlink(<handle:notify>)[notify];, #nlink(<handle:events>)[events];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [classdef listener support added],
)

// Author: Allan CORNET
