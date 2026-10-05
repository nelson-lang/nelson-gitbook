# fmuToBlock

Turn an FMU into a native nflow block manifest.

## 📝 Syntax

- block = fmuToBlock(fmu)
- block = fmuToBlock(fmu, name, value)

## 📥 Input argument

- fmu - a string scalar or character row vector: the path to a <b>.fmu</b> archive or to an already-extracted FMU directory.
- name, value - option pairs: <b>'Name'</b> (block label / library title, default the FMU model identifier), <b>'IconDir'</b> (directory to extract the FMU icon into), <b>'LibraryFile'</b> (also write a one-block <b>library.json</b> to this path), <b>'LibraryId'</b> (the library id, default <b>user.<name></b>).

## 📤 Output argument

- block - a structure describing the generated block, in the same schema as a <b>library.json</b> block entry.

## 📄 Description


<b>fmuToBlock</b> is the nflow FMU import assistant. It reads an FMU's <b>modelDescription.xml</b> and produces a native-looking nflow block: one input port per variable with causality <b>input</b>, one output port per <b>output</b>, the FMU parameters, the FMU's icon (its <b>model.png</b> when present, otherwise a labelled fallback), and a default <b>path</b> parameter pointing at the <b>.fmu</b>. 

The generated block targets the engine's <b>fmu</b> handler, so placing it yields a working FMU block that simulates through the existing FMI path -- there is no new runtime. The value is authoring: an FMU becomes a first-class, named, icon'd palette block instead of a generic browse box. This pairs with the Modelica bridge, whose <b>modelicaToFmu</b> produces FMUs that <b>fmuToBlock</b> can then wrap. 

With the <b>'LibraryFile'</b> option, a one-block <b>library.json</b> is also written, ready to load in the nflow editor. Many FMUs ship no icon; in that case the render is a clean labelled fallback.

## 💡 Examples

Import a reference FMU as a block and write a library.

```matlab
fmu = [modulepath('nflow_fmi'), '/examples/VanDerPol.fmu'];
block = fmuToBlock(fmu, 'Name', 'VanDerPol', 'LibraryFile', [tempdir(), '/vdp.json'])
```
Wrap a Modelica model compiled through the bridge.

```matlab
src = sprintf('model FO\n  output Real x(start = 1.0);\nequation\n  der(x) = -x;\nend FO;\n');
fmu = modelicaToFmu(src);
block = fmuToBlock(fmu, 'Name', 'FirstOrder')
```


## 🔗 See also

[fmiInfo](../nflow_fmi/fmiInfo.md), [modelicaToFmu](../nflow_fmi/modelicaToFmu.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
