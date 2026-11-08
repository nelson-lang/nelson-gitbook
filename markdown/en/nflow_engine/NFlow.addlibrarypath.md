# NFlow.addlibrarypath

Add an nflow block library search path.

## 📝 Syntax

- NFlow.addlibrarypath(folder)
- paths = NFlow.addlibrarypath(folder)

## 📥 Input argument

- folder - a directory that holds one or more library sub-folders, each with a <b>library.json</b> and its native library.

## 📤 Output argument

- paths - the updated list of search paths, a cell array of character vectors.

## 📄 Description


<b>NFlow.addlibrarypath</b> adds <b>folder</b> to the nflow block library search paths and scans it. Every sub-folder that holds a <b>library.json</b> next to its native library is loaded, so its blocks become available to <b>sim</b>, code generation and the editor without restarting Nelson. 

Adding a folder that is already registered has no effect. An error is raised when <b>folder</b> does not exist.

## 💡 Example

Build the cumprod example plugin and register its library folder.

```matlab
run([modulepath('nflow_gui'), '/examples/libraries/cumprod/builder.m']);
NFlow.addlibrarypath([modulepath('nflow_gui'), '/examples/libraries']);
NFlow.librarypaths()
```


## 🔗 See also

[NFlow.librarypaths](../nflow_engine/NFlow.librarypaths.md), [NFlow.rmlibrarypath](../nflow_engine/NFlow.rmlibrarypath.md), [sim](../nflow_engine/sim.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
