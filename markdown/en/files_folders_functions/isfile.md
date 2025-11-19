# isfile

Returns true is the input argument is a file.

## 📝 Syntax

- r = isfile(name)

## 📥 Input argument

- name - a string: filename to check.

## 📤 Output argument

- r - a logical: true if it is a file.

## 📄 Description

<b>isfile(name)</b> returns <b>true</b> if<b>name</b> is a file.

## 💡 Example

```matlab
isfile(nelsonroot())
isfile([nelsonroot(), '/etc/finish.m'])
```

## 🔗 See also

[mkdir](../files_folders_functions/mkdir.md), [isfolder](../files_folders_functions/isfolder.md).

## 🕔 History

| Version | 📄 Description                                   |
| ------- | ------------------------------------------------ |
| 1.0.0   | initial version                                  |
| 1.4.0   | input arguments support scalar string array type |

<!--
## 👤 Author

Allan CORNET
-->
