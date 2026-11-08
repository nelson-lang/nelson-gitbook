# dlgetnflowlibraries

Returns the libraries a native nflow block plugin must link against.

## 📝 Syntax

- C = dlgetnflowlibraries()

## 📤 Output argument

- C - a cell array of library paths without extension. dlgeneratemake appends the platform suffix (.lib on Windows, .so or .dylib otherwise).

## 📄 Description


<b>C = dlgetnflowlibraries()</b> returns the libraries needed to link a native nflow block plugin. 

A plugin calls the simulation helpers (<b>getInput</b>, <b>getState</b>, <b>setOutput</b>, <b>updated</b>, and others), which are compiled into <b>nlsNflow\_blocks</b>. Linking that single library is enough; its own Nelson dependencies are resolved at load time. 

This function is typically passed to <b>dlgeneratemake</b>.

## 💡 Example



```matlab
dlgetnflowlibraries()
```


## 🔗 See also

[dlgetnflowincludes](../../nflow_blocks/plugin_development/dlgetnflowincludes.md), [dlgeneratemake](../../dynamic_link/dlgeneratemake.md), [dlmake](../../dynamic_link/dlmake.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
