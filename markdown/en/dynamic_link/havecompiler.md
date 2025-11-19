# havecompiler

Detect if a C/C++ compiler is configured.

## 📝 Syntax

- [status, compiler] = havecompiler()

## 📤 Output argument

- status - a logical.
- compiler - a string: 'msvc', 'mingw', 'unix' or ''.

## 📄 Description

<b>havecompiler</b> detects if C/C++ compiler is configured for Nelson.

On Unix platforms (linux, MacOs),<b>havecompiler</b> returns always <b>true</b> as status and<b>unix</b> as compiler.

## 💡 Example

```matlab
[status, message] = havecompiler()
```

## 🔗 See also

[configuremsvc](../dynamic_link/configuremsvc.md), [configuremingw](../dynamic_link/configuremingw.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
