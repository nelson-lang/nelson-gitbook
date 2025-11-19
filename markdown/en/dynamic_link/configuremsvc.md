# configuremsvc

Configure Nelson to use visual studio as default compiler

## 📝 Syntax

- [res, message] = configuremsvc()

## 📤 Output argument

- res - a logical: true if visual studio was found
- message - a string: empty if visual studio was found or an error message.

## 📄 Description

By default, Nelson has no C/C++ compiler defined as default on Windows.

On others platforms, we will suppose that a C/C++ compiler is always available and it is not required to call this function.

On Windows, you need to call once<b>configuremsvc</b> if you want to use visual studio as default compiler.

After each update of Visual studio, it will be required to call again<b>configuremsvc</b>.

## 💡 Example

```matlab
configuremsvc()
```

## 🔗 See also

[Supported C/C++ compilers](../dynamic_link/2_supported_compilers.md), [havecompiler](../dynamic_link/havecompiler.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
