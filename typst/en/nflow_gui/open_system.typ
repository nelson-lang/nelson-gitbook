#import "nelson_help.typ": *

= open\_system <nflow_gui:open_system>

Open the nflow editor on a model, a model file, or an SSP archive.

== Syntax

- #raw("open_system(name)");
- #raw("open_system(handle)");
- #raw("open_system(file)");

== Input argument

/ name: a character vector: the name of a model already loaded in memory.
/ handle: a numeric handle to a model created by the programmatic API.
/ file: a character vector: the path to a #strong[.nflow]; model file, or to an #strong[.ssp]; (System Structure and Parameterization) archive.

== Description

#strong[open\_system]; opens the nflow editor on a model. A model already loaded in memory (by name or handle) is snapshotted to a file and opened; a #strong[.nflow]; file is opened directly.

 When the argument is an #strong[.ssp]; archive, it is not a diagram: it is first imported with #strong[NFlow.sspImport]; (its component FMUs are extracted, wired by connector name, and written to a runnable #strong[.nflow]; model) and the resulting model is opened. This lets an SSP composition be opened in the editor in one step.

 The editor works on the snapshot it was opened with; script-side mutations made while the window is open are not streamed live to it.


== Example

Open an SSP composition in the editor

``````matlab
ssp = [modulepath('nflow_fmi', 'root'), '/examples/ControlledDrivetrain.ssp'];
open_system(ssp);
``````


== See also

#nlink(<nflow_engine:ssp>)[NFlow.sspInfo];, #nlink(<nflow_engine:sim>)[sim];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [open\_system accepts an .ssp archive (imported then opened)],
)

// Author: Allan CORNET
