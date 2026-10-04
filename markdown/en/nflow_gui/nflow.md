# nflow

Launch the nflow editor, optionally on a model file.

## 📝 Syntax

- nflow()
- nflow(file)
- h = nflow(file)

## 📥 Input argument

- file - a character vector: the path to a <b>.nflow</b> model file to open in the editor. When omitted, the editor opens on an empty model.

## 📤 Output argument

- h - a handle to the editor window that was opened.

## 📄 Description

<b>nflow</b> opens the nflow editor, a browser-based diagram editor for building and simulating models. Called with no argument it opens on an empty model; called with a <b>.nflow</b> file it opens that model.

<b>nflow</b> is the low-level launcher. For opening a model already loaded in memory (by name or handle), or an <b>.ssp</b> archive, use <b>open_system</b>, which resolves those inputs and then opens the editor.

The editor works on the model it was opened with; script-side mutations made while the window is open are not streamed live to it.

## 💡 Example

Open an empty editor, then a model file

```matlab
nflow();
model = [modulepath('nflow_blocks', 'root'), '/examples/acausal/Acausal_EMF_DC_Motor_Demo.nflow'];
nflow(model);
```

## 🔗 See also

[open_system](../nflow_gui/open_system.md), [new_system](../nflow_engine/new_system.md), [sim](../nflow_engine/sim.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
