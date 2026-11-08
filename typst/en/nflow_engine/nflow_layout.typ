#import "nelson_help.typ": *

= nflow\_layout <nflow_engine:nflow_layout>

Automatically arrange the blocks of an nflow (sub)system.

== Syntax

- #raw("nflow_layout(sys)");

== Input argument

/ sys: a string: name of a loaded model (#raw("'model'");) to arrange its root diagram, or path of a subsystem (#raw("'model/Sub'");, #raw("'model/Sub/Inner'");) to arrange that subsystem; or a numeric model handle.

== Description

#strong[nflow\_layout]; computes new positions for the blocks of a (sub)system from their connections: sources on the left, then one column per layer of connectivity, with wire crossings reduced, feedback edges handled and pure sinks grouped on the right.

 Only the targeted depth is arranged: blocks inside nested subsystems keep their positions, call #strong[nflow\_layout]; on each subsystem path to arrange it too.

 Only the geometry changes (block #raw("Position");); blocks, parameters and connections are left as they are, so the simulation result is unchanged. The layout is deterministic: running it again on the same diagram gives the same positions.

 The model must be loaded (#strong[new\_system]; or #strong[load\_system];). An unknown subsystem path is an error. The model is marked as modified; use #strong[save\_system]; to keep the new layout.


== Examples

Build a model from a script, then arrange it.

``````matlab
new_system('demo');
add_block('nflow/source/sine', 'demo/S');
add_block('nflow/math/gain', 'demo/G1', 'Gain', 2);
add_block('nflow/math/gain', 'demo/G2', 'Gain', 3);
add_line('demo', 'S/1', 'G1/1');
add_line('demo', 'S/1', 'G2/1');
nflow_layout('demo');
get_param('demo/S', 'Position')
get_param('demo/G1', 'Position')
get_param('demo/G2', 'Position')
bdclose('demo');
``````

Arrange a nested subsystem.

``````matlab
new_system('demo');
add_block('subsystem', 'demo/Sub');
add_block('nflow/source/sine', 'demo/Sub/S');
add_block('nflow/math/gain', 'demo/Sub/G');
add_line('demo', 'Sub/S/1', 'Sub/G/1');
nflow_layout('demo/Sub');
bdclose('demo');
``````


== See also

#nlink(<nflow_engine:add_block>)[add\_block];, #nlink(<nflow_engine:add_line>)[add\_line];, #nlink(<nflow_engine:get_param>)[get\_param];, #nlink(<nflow_engine:nflow_reroute>)[nflow\_reroute];, #nlink(<nflow_engine:save_system>)[save\_system];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
