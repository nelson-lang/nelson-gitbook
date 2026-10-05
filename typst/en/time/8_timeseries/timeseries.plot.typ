#import "../nelson_help.typ": *

= timeseries.plot <time:8_timeseries.timeseries.plot>

Plot timeseries data against time.

== Syntax

- #raw("h = plot(ts)");
- #raw("h = plot(ax, ts)");
- #raw("h = plot(ts, lineSpec)");

== Input argument

/ ts: Input timeseries object.
/ ax: Optional target axes.
/ lineSpec: Optional line style or graphics arguments.

== Output argument

/ h: Graphics handle to the plotted line or stairs object.

== Description

#strong[plot]; Plots sample time on the x-axis and timeseries data on the y-axis. Zero-order hold interpolation uses stair-step drawing.


== Example

``````matlab
f = figure();
ts = timeseries([1; 2; 3], [10; 11; 12], 'Name', 'speed');
h = plot(ts);

``````


== See also

#nlink(<time:8_timeseries.timeseries>)[timeseries];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
