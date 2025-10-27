# removegateway

Removes dynamically builtin at runtime.

## 📝 Syntax

- removegateway(dyn_lib_path)

## 📥 Input argument

- dyn_lib_path - a string: path of a dynamic library prepared for Nelson.

## 📄 Description

<b>removegateway(dyn_lib_path)</b> removes dynamically builtin at runtime.

The dynamic library loaded must have at least an C entry point <b>RemoveGateway</b>.

If gateway was not loaded, no error or warning will be raised. If file does not exist an error is raised.

## 💡 Example

removes time builtin

```matlab
calendar
removegateway(modulepath('time', 'builtin'))
calendar
```

## 🔗 See also

[addgateway](../dynamic_link/addgateway.md), [gatewayinfo](../dynamic_link/gatewayinfo.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
