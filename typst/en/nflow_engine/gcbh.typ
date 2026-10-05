#import "nelson_help.typ": *

= gcbh <nflow_engine:gcbh>

Return the handle of the current block.

== Syntax

- #raw("h = gcbh()");

== Input argument

/ : 

== Output argument

/ h: a numeric handle for the current block, or the empty matrix #strong[\[\]]; when no block is selected.

== Description

#strong[gcbh]; returns a numeric handle for the current block, the block selected in the editor (the same block #strong[gcb]; reports as a path).

 The handle is a reference-style value that can be passed to #strong[get\_param]; and #strong[set\_param]; in place of the block path. It stays valid until the block is deleted or its model is closed.

 #strong[gcbh]; returns the empty matrix #strong[\[\]]; when no block is selected or no editor is active, mirroring #strong[gcb];, which returns the empty string in that case.


== Example

``````matlab
new_system('demo');
add_block('nflow/math/gain', 'demo/Gain');
set_param('demo/Gain', 'Gain', '2');
% In the editor, gcbh() returns the handle of the selected block.
% The same handle is available by path with get_param(path, 'Handle'):
h = get_param('demo/Gain', 'Handle')
get_param(h, 'Gain')
bdclose('demo');
``````


== See also

#nlink(<nflow_engine:getNFlowBlockHandle>)[getNFlowBlockHandle];, #nlink(<nflow_engine:getfullname>)[getfullname];, #nlink(<nflow_engine:get_param>)[get\_param];, #nlink(<nflow_engine:set_param>)[set\_param];, #nlink(<nflow_engine:find_system>)[find\_system];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
