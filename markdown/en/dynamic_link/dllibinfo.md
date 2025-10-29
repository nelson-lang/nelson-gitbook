# dllibinfo

Returns list of available symbols in an shared library.

## 📝 Syntax

- c = dllibinfo(lib)

## 📥 Input argument

- lib - a dllib handle: library already loaded.

## 📤 Output argument

- c - a cell of strings.

## 📄 Description

<b>dllibinfo</b> returns list of available symbols in an shared library.

## 💡 Example

```matlab
lib = dlopen(modulepath('dynamic_link', 'builtin'))
c = dllibinfo(lib)
```

## 🔗 See also

[dlopen](../dynamic_link/dlopen.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
