#import "nelson_help.typ": *

= getfullname <nflow_engine:getfullname>

Return the full path of a block or model from its handle.

== Syntax

- #raw("path = getfullname(handle)");

== Input argument

/ handle: a numeric handle (block or model), a char block path, or a cell array of handles.

== Output argument

/ path: the full path: 'model\/BlockName' for a block handle, 'model' for a model handle. A cell array of handles yields a cell array of paths.

== Description

#strong[getfullname]; returns the full path that identifies the block or model named by a handle. A block handle yields #strong['model\/BlockName'];; a model handle yields #strong['model'];.

 It is the inverse of #strong[getNFlowBlockHandle];. A char path is already a full name and is returned unchanged. A cell array of handles yields a cell array of paths of the same shape.

 An unknown handle raises an error.


== Example

``````matlab
new_system('demo');
add_block('nflow/math/gain', 'demo/Gain');
h = getNFlowBlockHandle('demo/Gain');
path = getfullname(h)
bdclose('demo');
``````


== See also

#nlink(<nflow_engine:getNFlowBlockHandle>)[getNFlowBlockHandle];, #nlink(<nflow_engine:get_param>)[get\_param];, #nlink(<nflow_engine:find_system>)[find\_system];, #nlink(<nflow_engine:bdroot>)[bdroot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
