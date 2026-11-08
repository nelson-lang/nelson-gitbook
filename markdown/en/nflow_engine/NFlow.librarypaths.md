# NFlow.librarypaths

Return the nflow block library search paths.

## 📝 Syntax

- paths = NFlow.librarypaths()

## 📤 Output argument

- paths - the current nflow library search paths, a cell array of character vectors.

## 📄 Description


<b>NFlow.librarypaths</b> returns the directories currently scanned for external nflow block libraries. The list is the one shared by <b>sim</b>, code generation and the editor, and is changed with <b>NFlow.addlibrarypath</b> and <b>NFlow.rmlibrarypath</b>.

## 💡 Example

List the registered library search paths.

```matlab
NFlow.librarypaths()
```


## 🔗 See also

[NFlow.addlibrarypath](../nflow_engine/NFlow.addlibrarypath.md), [NFlow.rmlibrarypath](../nflow_engine/NFlow.rmlibrarypath.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
