# gatewayinfo

Returns information about an gateway.

## 📝 Syntax

- [gateway\_name, builtin\_list] = gatewayinfo(dyn_lib_path)

## 📥 Input argument

- dyn_lib_path - a string: path of a dynamic library prepared for Nelson.

## 📤 Output argument

- gateway_name - a string: gateway name
- builtin_list - a cell of strings: list of builtin in this gateway

## 📄 Description

<b>[gateway\_name, builtin\_list] = gatewayinfo(dyn_lib_path)</b> get information about an gateway.

The dynamic library must have at least an C entry point<b>GetGatewayInfo</b>.

If file does not exist an error is raised.

## 💡 Example

```matlab
[gateway_name, builtin_list] = gatewayinfo(modulepath('time', 'builtin'))

```

## 🔗 See also

[addgateway](../modules_manager/addgateway.md), [removegateway](../modules_manager/removegateway.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
