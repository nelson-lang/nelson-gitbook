#import "nelson_help.typ": *

= nflow\_reroute <nflow_engine:nflow_reroute>

Recompute the wire routes of an nflow (sub)system.

== Syntax

- #raw("nflow_reroute(sys)");
- #raw("nflow_reroute(sys, width)");
- #raw("nflow_reroute(sys, width, height)");

== Input argument

/ sys: a string: name of a loaded model (#raw("'model'");) to route its root diagram, or path of a subsystem (#raw("'model/Sub'");, #raw("'model/Sub/Inner'");) to route that subsystem; or a numeric model handle.
/ width: a scalar: width of the routing area, in diagram units. Default: 4000.
/ height: a scalar: height of the routing area, in diagram units. Default: 4000.

== Description

#strong[nflow\_reroute]; computes a new route for every connection of a (sub)system and stores it on the connection as a list of waypoints. Routes are orthogonal and go around the blocks, from the output port to the input port.

 Blocks do not move: call #strong[nflow\_layout]; first to arrange them, then #strong[nflow\_reroute]; to draw the wires for the new positions. Port positions are estimated from the number of ports declared by each block type.

 Only the targeted depth is routed: call #strong[nflow\_reroute]; on each subsystem path to route it too. Only the wire geometry changes, so the simulation result is unchanged.

 The model must be loaded (#strong[new\_system]; or #strong[load\_system];). An unknown subsystem path, or a routing failure, is an error. The model is marked as modified; use #strong[save\_system]; to keep the routes.


== Example

Arrange a model, route its wires, and read the stored route.

``````matlab
new_system('demo');
add_block('nflow/source/sine', 'demo/S');
add_block('nflow/math/gain', 'demo/G', 'Gain', 2);
add_line('demo', 'S/1', 'G/1');
nflow_layout('demo');
nflow_reroute('demo');
f = [tempname(), '.nflow'];
save_system('demo', f);
m = jsondecode(fileread(f));
w = m.connections(1).waypoints;
[[w.x]', [w.y]']
bdclose('demo');
rmfile(f);
``````


== See also

#nlink(<nflow_engine:nflow_layout>)[nflow\_layout];, #nlink(<nflow_engine:add_line>)[add\_line];, #nlink(<nflow_engine:save_system>)[save\_system];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
