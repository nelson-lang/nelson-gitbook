# open\_system

Open the nflow editor on a model, a model file, or an SSP archive.

## 📝 Syntax

- open\_system(name)
- open\_system(handle)
- open\_system(file)

## 📥 Input argument

- name - a character vector: the name of a model already loaded in memory.
- handle - a numeric handle to a model created by the programmatic API.
- file - a character vector: the path to a <b>.nflow</b> model file, or to an <b>.ssp</b> (System Structure and Parameterization) archive.

## 📄 Description


<b>open\_system</b> opens the nflow editor on a model. A model already loaded in memory (by name or handle) is snapshotted to a file and opened; a <b>.nflow</b> file is opened directly. 

When the argument is an <b>.ssp</b> archive, it is not a diagram: it is first imported with <b>NFlow.sspImport</b> (its component FMUs are extracted, wired by connector name, and written to a runnable <b>.nflow</b> model) and the resulting model is opened. This lets an SSP composition be opened in the editor in one step. 

The editor works on the snapshot it was opened with; script-side mutations made while the window is open are not streamed live to it.

## 💡 Example

Open an SSP composition in the editor

```matlab
ssp = [modulepath('nflow_fmi', 'root'), '/examples/ControlledDrivetrain.ssp'];
open_system(ssp);
```


## 🔗 See also

[NFlow.sspInfo](../nflow_engine/ssp.md), [sim](../nflow_engine/sim.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | open_system accepts an .ssp archive (imported then opened) |

<!--
## 👤 Author

Allan CORNET
-->
