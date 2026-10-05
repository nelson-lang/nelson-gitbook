#import "nelson_help.typ": *

= new\_system <nflow_engine:new_system>

Create and load an empty nflow model.

== Syntax

- #raw("h = new_system()");
- #raw("h = new_system(name)");

== Input argument

/ name: a string: a valid model identifier. When omitted, an automatic name is generated (#strong[untitled];, #strong[untitled1];, ...).

== Output argument

/ h: a double: a handle to the loaded model.

== Description

#strong[new\_system]; creates an empty nflow model and registers it as loaded. The model is addressed later either by its returned handle or by its name.

 Blocks are added with #strong[add\_block];, connected with #strong[add\_line]; or #strong[NFlow.connectBlocks];, configured with #strong[set\_param];, saved with #strong[save\_system]; and opened in the editor with #strong[open\_system];.


== Example

``````matlab
new_system('demo');
add_block('nflow/source/sine', 'demo/Sine');
add_block('nflow/math/gain', 'demo/Gain', 'gain', 2);
add_block('nflow/sink/scope', 'demo/Scope');
add_line('demo', 'Sine/1', 'Gain/1');
add_line('demo', 'Gain/1', 'Scope/1');
set_param('demo', 'StopTime', 10);
save_system('demo', [tempdir(), 'demo.nflow']);
bdclose('demo');
``````


== See also

#nlink(<nflow_engine:add_block>)[add\_block];, #nlink(<nflow_engine:add_line>)[add\_line];, #nlink(<nflow_engine:set_param>)[set\_param];, #nlink(<nflow_engine:save_system>)[save\_system];, #nlink(<nflow_engine:close_system>)[close\_system];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
