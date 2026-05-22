# addgateway

Adds dynamically builtin at runtime.

## 📝 Syntax

- addgateway(dyn_lib_path)

## 📥 Input argument

- dyn_lib_path - a string: path of a dynamic library prepared for Nelson.

## 📄 Description

<b>addgateway(dyn_lib_path)</b> adds dynamically builtin at runtime.

The dynamic library loaded must have at least an C entry point<b>AddGateway</b>.

If gateway was already loaded, no error or warning will be raised.

## 💡 Example

Add gateway for string module:

```matlab
addgateway(modulepath('time', 'builtin'))
```

## 🔗 See also

[removegateway](../modules_manager/removegateway.md), [gatewayinfo](../modules_manager/gatewayinfo.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
