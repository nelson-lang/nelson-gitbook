# loadcompilerconf

load compiler configuration.

## 📝 Syntax

- res = loadcompilerconf()
- [res, compiler] = loadcompilerconf()

## 📤 Output argument

- res - a logical
- compiler - a string: 'msvc', 'mingw', 'unix' or ''

## 📄 Description

<b>loadcompilerconf</b> returns true if compiler was previously configured with<b>configuremsvc</b> or <b>configuremingw</b>.

<b>loadcompilerconf</b> returns always false on others platforms and 'unix' as compiler.

<b>loadcompilerconf</b> is called at Nelson's startup.

## 🔗 See also

[removecompilerconf](../dynamic_link/removecompilerconf.md), [configuremingw](../dynamic_link/configuremingw.md), [configuremsvc](../dynamic_link/configuremsvc.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
