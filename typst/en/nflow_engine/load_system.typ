#import "nelson_help.typ": *

= load\_system <nflow_engine:load_system>

Load an nflow model from a .nflow file without opening the editor.

== Syntax

- #raw("h = load_system(fileOrName)");

== Input argument

/ args: see the syntaxes above.

== Output argument

/ varargout: see the syntaxes above.

== Description

#strong[load\_system]; loads an nflow model from a .nflow file without opening the editor.


== Example

``````matlab
new_system('demo');
add_block('nflow/source/sine', 'demo/Sine');
add_block('nflow/math/gain', 'demo/Gain', 'gain', 2);
add_line('demo', 'Sine/1', 'Gain/1');
bdclose('demo');
``````


== See also

#nlink(<nflow_engine:new_system>)[new\_system];, #nlink(<nflow_engine:add_block>)[add\_block];, #nlink(<nflow_engine:add_line>)[add\_line];, #nlink(<nflow_engine:set_param>)[set\_param];, #nlink(<nflow_engine:get_param>)[get\_param];, #nlink(<nflow_engine:save_system>)[save\_system];, #nlink(<nflow_engine:close_system>)[close\_system];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
