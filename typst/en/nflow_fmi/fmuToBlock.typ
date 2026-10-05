#import "nelson_help.typ": *

= fmuToBlock <nflow_fmi:fmuToBlock>

Turn an FMU into a native nflow block manifest.

== Syntax

- #raw("block = fmuToBlock(fmu)");
- #raw("block = fmuToBlock(fmu, name, value)");

== Input argument

/ fmu: a string scalar or character row vector: the path to a #strong[.fmu]; archive or to an already-extracted FMU directory.
/ name, value: option pairs: #strong['Name']; (block label \/ library title, default the FMU model identifier), #strong['IconDir']; (directory to extract the FMU icon into), #strong['LibraryFile']; (also write a one-block #strong[library.json]; to this path), #strong['LibraryId']; (the library id, default #strong[user.\<name\>];).

== Output argument

/ block: a structure describing the generated block, in the same schema as a #strong[library.json]; block entry.

== Description

#strong[fmuToBlock]; is the nflow FMU import assistant. It reads an FMU's #strong[modelDescription.xml]; and produces a native-looking nflow block: one input port per variable with causality #strong[input];, one output port per #strong[output];, the FMU parameters, the FMU's icon (its #strong[model.png]; when present, otherwise a labelled fallback), and a default #strong[path]; parameter pointing at the #strong[.fmu];.

 The generated block targets the engine's #strong[fmu]; handler, so placing it yields a working FMU block that simulates through the existing FMI path -- there is no new runtime. The value is authoring: an FMU becomes a first-class, named, icon'd palette block instead of a generic browse box. This pairs with the Modelica bridge, whose #strong[modelicaToFmu]; produces FMUs that #strong[fmuToBlock]; can then wrap.

 With the #strong['LibraryFile']; option, a one-block #strong[library.json]; is also written, ready to load in the nflow editor. Many FMUs ship no icon; in that case the render is a clean labelled fallback.


== Examples

Import a reference FMU as a block and write a library.

``````matlab
fmu = [modulepath('nflow_fmi'), '/examples/VanDerPol.fmu'];
block = fmuToBlock(fmu, 'Name', 'VanDerPol', 'LibraryFile', [tempdir(), '/vdp.json'])
``````

Wrap a Modelica model compiled through the bridge.

``````matlab
src = sprintf('model FO\n  output Real x(start = 1.0);\nequation\n  der(x) = -x;\nend FO;\n');
fmu = modelicaToFmu(src);
block = fmuToBlock(fmu, 'Name', 'FirstOrder')
``````


== See also

#nlink(<nflow_fmi:fmiInfo>)[fmiInfo];, #nlink(<nflow_fmi:modelicaToFmu>)[modelicaToFmu];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
