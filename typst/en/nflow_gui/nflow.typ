#import "nelson_help.typ": *

= nflow <nflow_gui:nflow>

Launch the nflow editor, optionally on a model file.

== Syntax

- #raw("nflow()");
- #raw("nflow(file)");
- #raw("h = nflow(file)");

== Input argument

/ file: a character vector: the path to a #strong[.nflow]; model file to open in the editor. When omitted, the editor opens on an empty model.

== Output argument

/ h: a handle to the editor window that was opened.

== Description

#strong[nflow]; opens the nflow editor, a browser-based diagram editor for building and simulating models. Called with no argument it opens on an empty model; called with a #strong[.nflow]; file it opens that model.

 #strong[nflow]; is the low-level launcher. For opening a model already loaded in memory (by name or handle), or an #strong[.ssp]; archive, use #strong[open\_system];, which resolves those inputs and then opens the editor.

 The editor works on the model it was opened with; script-side mutations made while the window is open are not streamed live to it.


== Example

Open an empty editor, then a model file

``````matlab
nflow();
model = [modulepath('nflow_blocks', 'root'), '/examples/acausal/Acausal_EMF_DC_Motor_Demo.nflow'];
nflow(model);
``````


== See also

#nlink(<nflow_gui:open_system>)[open\_system];, #nlink(<nflow_engine:new_system>)[new\_system];, #nlink(<nflow_engine:sim>)[sim];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
