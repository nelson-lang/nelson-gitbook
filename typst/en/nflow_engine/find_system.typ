#import "nelson_help.typ": *

= find\_system <nflow_engine:find_system>

List the blocks of a model, optionally filtered by type.

== Syntax

- #raw("paths = find_system(sys)");
- #raw("paths = find_system(sys, 'BlockType', type)");

== Input argument

/ args: see the syntaxes above.

== Output argument

/ paths: a cell array of path strings ('sys' and 'sys\/BlockName').

== Description

#strong[find\_system]; lists the blocks of a model, optionally filtered by type.

 #strong[find\_system(sys)]; returns the model itself and every block under it, as a cell array of paths ('sys' and 'sys\/BlockName').

 #strong[find\_system(sys, 'BlockType', type)]; returns only the paths of blocks whose type is #strong[type]; (the model itself is omitted). An unknown property name is an error.


== Example

``````matlab
new_system('demo');
add_block('nflow/source/sine', 'demo/Sine');
add_block('nflow/math/gain', 'demo/Gain', 'gain', 2);
paths = find_system('demo')
gains = find_system('demo', 'BlockType', 'gain')
bdclose('demo');
``````


== See also

#nlink(<nflow_engine:new_system>)[new\_system];, #nlink(<nflow_engine:add_block>)[add\_block];, #nlink(<nflow_engine:get_param>)[get\_param];, #nlink(<nflow_engine:set_param>)[set\_param];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
