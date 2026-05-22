# findcmake

find CMake path.

## 📝 Syntax

- [status, cmake\_path] = findcmake()

## 📤 Output argument

- status - a logical.
- cmake_path - a string: path of CMake or ' '.

## 📄 Description

find CMake path.

CMake is used internaly to generate makefiles used to build dynamic libraries on fly.

## 💡 Example

```matlab
[status, cmake_path] = findcmake()
```

## 🔗 See also

[cmake](../dynamic_link/cmake.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
