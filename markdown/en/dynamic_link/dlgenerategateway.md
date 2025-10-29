# dlgenerategateway

Generates C++ gateway.

## 📝 Syntax

- dlgenerategateway(destinationdir, module_name, builtin_table)

## 📥 Input argument

- destinationdir - a string: destination directory where is generated the gateway file.
- module_name - a string: module name exposed in Nelson.
- builtin_table - a cell composed of cell with {name exposed in Nelson, nb output arguments, nb input arguments}

## 📄 Description

<b>dlgenerategateway</b> generates a C++ gateway used by <b>addmodule</b>.

## 💡 Example

See module skeleton for example

```matlab
dlgenerategateway(tempdir(), 'module_skeleton', {{'cpp_sum', 1, 2}; {'cpp_sub', 2, 3}});
text = fileread([tempdir(), 'Gateway.cpp'])
```

## 🔗 See also

[addmodule](../modules_manager/addmodule.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
