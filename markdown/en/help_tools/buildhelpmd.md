# buildhelpmd

Build help of Nelson's modules for GitBook.

## 📝 Syntax

- buildhelpmd(dirdest)
- buildhelpmd(dirdest, module\_name)

## 📥 Input argument

- dirdest - a string: a path destination.
- module\_name - a string: module name (module must be loaded).

## 📄 Description


<b>buildhelpmd</b> generates help files for GitBook (markdown).

## 💡 Example



```matlab
buildhelpmd(tempdir());
buildhelpmd(tempdir(), 'core');
```


## 🔗 See also

[buildhelp](../help_tools/buildhelp.md), [doc](../help_tools/doc.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
