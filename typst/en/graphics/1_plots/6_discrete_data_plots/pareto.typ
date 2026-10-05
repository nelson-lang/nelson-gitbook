#import "../../nelson_help.typ": *

= pareto <graphics:1_plots.6_discrete_data_plots.pareto>

Display Pareto chart.

== Syntax

- #raw("pareto(y)");
- #raw("pareto(y, threshold)");
- #raw("pareto(y, labels)");
- #raw("pareto(y, labels, threshold)");
- #raw("pareto(parent, ...)");
- #raw("h = pareto(...)");

== Description

#strong[pareto]; sorts nonnegative values in descending order, displays bars, and overlays a cumulative line. #strong[threshold]; is a scalar between 0 and 1 that controls how many sorted labels are displayed.


== Example

Create a Pareto chart.

``````matlab
pareto([5 20 10], {'A', 'B', 'C'});
``````


#align(center)[#image("pareto_1.svg")]

== See also

#nlink(<graphics:1_plots.6_discrete_data_plots.bar>)[bar];, #nlink(<graphics:1_plots.1_line_plots.plot>)[plot];.
