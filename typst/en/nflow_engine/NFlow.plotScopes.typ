#import "nelson_help.typ": *

= NFlow.plotScopes <nflow_engine:NFlow.plotScopes>

Open one figure per scope of an nflow simulation result.

== Syntax

- #raw("figures = NFlow.plotScopes(out)");
- #raw("NFlow.plotScopes(out)");

== Input argument

/ out: the structure returned by #strong[sim]; (it must hold a #strong[logsout]; field).

== Output argument

/ figures: a vector of figure handles, one per plotted scope.

== Description

#strong[NFlow.plotScopes]; opens one figure per logged signal in #strong[out.logsout];, drawing every channel of a scope as a line on the same axes. Each figure is titled with the scope identifier.

 It is handy as a model #strong[stopFcn];: set a model's StopFcn to #strong[NFlow.plotScopes(out)]; so the scope traces pop up automatically when the simulation stops, both from #strong[sim]; and from the nflow editor's Run button.


== Example

Simulate a demo and plot its scopes.

``````matlab
model = [modulepath('nflow_blocks'), '/examples/causal/Second_Order_Responses_Demo.nflow'];
out = sim(model);
NFlow.plotScopes(out);
``````


== See also

#nlink(<nflow_engine:sim>)[sim];, #nlink(<nflow_blocks:sink.scope>)[scope];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
