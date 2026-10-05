#import "nelson_help.typ": *

= getNFlowBlockHandle <nflow_engine:getNFlowBlockHandle>

Return the handle of a block by path, or -1 if not found.

== Syntax

- #raw("h = getNFlowBlockHandle(path)");
- #raw("h = getNFlowBlockHandle(path, load)");

== Input argument

/ path: a block path ('model\/BlockName'), or a cell array of block paths.
/ load: optional logical; when true, an unloaded model is loaded first if it can be found.

== Output argument

/ h: the numeric handle of the block, or #strong[-1]; when it is not found. For a cell array of paths, a numeric array of the same shape.

== Description

#strong[getNFlowBlockHandle]; returns the numeric handle of a block given its path, or #strong[-1]; when the block does not exist (no error is raised).

 The handle equals #strong[get\_param(path, 'Handle')]; and can be passed to #strong[get\_param]; and #strong[set\_param]; in place of the path. A path that names only a model (with no block) resolves to #strong[-1];.

 With a cell array of paths, the result is a numeric array of handles of the same shape, each element being the handle or #strong[-1];.

 When #strong[load]; is true and the model is not loaded, it is loaded first if it can be found; otherwise the result is still #strong[-1];.


== Example

``````matlab
new_system('demo');
add_block('nflow/math/gain', 'demo/Gain');
h = getNFlowBlockHandle('demo/Gain')
missing = getNFlowBlockHandle('demo/None')
get_param(h, 'BlockType')
bdclose('demo');
``````


== See also

#nlink(<nflow_engine:getfullname>)[getfullname];, #nlink(<nflow_engine:get_param>)[get\_param];, #nlink(<nflow_engine:set_param>)[set\_param];, #nlink(<nflow_engine:find_system>)[find\_system];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
