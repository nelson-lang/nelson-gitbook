# NFlow.rmlibrarypath

Remove an nflow block library search path.

## 📝 Syntax

- NFlow.rmlibrarypath(folder)
- paths = NFlow.rmlibrarypath(folder)

## 📥 Input argument

- folder - a directory previously added with <b>NFlow.addlibrarypath</b>.

## 📤 Output argument

- paths - the updated list of search paths, a cell array of character vectors.

## 📄 Description


<b>NFlow.rmlibrarypath</b> removes <b>folder</b> from the nflow block library search paths and rescans the remaining ones. Removing a folder that is not registered has no effect.

## 💡 Example

Register then remove a library folder.

```matlab
folder = [modulepath('nflow_gui'), '/examples/libraries'];
NFlow.addlibrarypath(folder);
NFlow.rmlibrarypath(folder)
```


## 🔗 See also

[NFlow.addlibrarypath](../nflow_engine/NFlow.addlibrarypath.md), [NFlow.librarypaths](../nflow_engine/NFlow.librarypaths.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
