# import

Import names from namespaces.

## 📝 Syntax

- import namespace.name
- import namespace.className.staticMethodName
- import namespace.\*
- import(namespace\_name)
- L = import()

## 📥 Input argument

- namespace.name - a dotted import name.
- namespace.\* - a namespace wildcard import.
- namespace\_name - a string scalar or character vector containing an import name.

## 📤 Output argument

- L - a cell array of character vectors: current imports in insertion order.

## 📄 Description


<b>import</b> adds package functions, package class constructors, package static methods, or namespace wildcard imports to the current scope. 

Duplicate import names are ignored. Imports declared in a function or script apply to the whole function or script body. In the base scope, imports remain active until <b>clear import</b>.

## 💡 Example



```matlab
import nelson.classdefpkg.Options
L = import()
clear import

```


## 🔗 See also

[clear](../memory_manager/clear.md), [which](../functions_manager/which.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
