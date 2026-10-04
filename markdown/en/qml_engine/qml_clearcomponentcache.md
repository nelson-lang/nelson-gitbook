# qml_clearcomponentcache

Clears the engine's internal component cache..

## 📝 Syntax

- qml_clearcomponentcache

## 📄 Description

This function causes the property metadata of all components previously loaded by the engine to be destroyed.

All previously loaded components and the property bindings for all extant objects created from those components will cease to function.

## 💡 Example

```matlab
qml_clearcomponentcache()
```

## 🔗 See also

[qml_collectgarbage](../qml_engine/qml_collectgarbage.md), [qml_loadfile](../qml_engine/qml_loadfile.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
