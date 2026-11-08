# dlgetnflowincludes

Returns the include directories required to build a native nflow block plugin.

## 📝 Syntax

- C = dlgetnflowincludes()

## 📤 Output argument

- C - a cell array of include directory paths: the nflow\_blocks SDK headers followed by the Nelson SDK include directories.

## 📄 Description


<b>C = dlgetnflowincludes()</b> returns the include directories needed to build a native nflow block plugin. 

The result lists the <b>nflow\_blocks</b> public headers (<b>BlockPlugin.h</b>, <b>SimEngineTypes.hpp</b>, and others), then the Nelson SDK include directories. The Nelson directories provide <b>nlohmann/json.hpp</b>, which is included by <b>SimEngineTypes.hpp</b>. 

The paths are resolved whether Nelson runs from its source tree or from an installation. 

This function is typically passed to <b>dlgeneratemake</b>.

## 💡 Example



```matlab
dlgetnflowincludes()
```


## 🔗 See also

[dlgetnflowlibraries](../../nflow_blocks/plugin_development/dlgetnflowlibraries.md), [dlgeneratemake](../../dynamic_link/dlgeneratemake.md), [dlmake](../../dynamic_link/dlmake.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
