#import "nelson_help.typ": *

= bdroot <nflow_engine:bdroot>

Return the top-level model of a block path.

== Syntax

- #raw("root = bdroot(obj)");

== Input argument

/ obj: a model name or a block path ('model' or 'model\/BlockName').

== Output argument

/ root: the top-level model name (the part before the first '\/').

== Description

#strong[bdroot]; returns the top-level model of a block path.

 #strong[bdroot('model')]; is #strong['model'];; #strong[bdroot('model\/Sub\/Blk')]; is #strong['model'];. The root model must be loaded.


== Example

``````matlab
new_system('demo');
add_block('nflow/math/gain', 'demo/Gain');
root = bdroot('demo/Gain')
bdclose('demo');
``````


== See also

#nlink(<nflow_engine:find_system>)[find\_system];, #nlink(<nflow_engine:new_system>)[new\_system];, #nlink(<nflow_engine:get_param>)[get\_param];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
