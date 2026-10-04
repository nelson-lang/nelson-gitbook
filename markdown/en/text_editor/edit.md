# edit

function editor.

## 📝 Syntax

- edit()
- edit filename
- edit function_name

## 📥 Input argument

- filename - a string: filename to open.
- function_name - a string: function name

## 📄 Description

<b>edit</b> opens a new file called untitled.m in the nelson's editor.

If <b>function_name</b> is the name of a defined nelson function <b>edit(function_name)</b> try to open the associated file function_name.m .

<b>edit(dirname)</b> opens all .m available in <b>dirname</b>.

## 💡 Example

```matlab
edit('edit')
```

## 🔗 See also

[smartindent](../interpreter/smartindent.md).

## 🕔 History

| Version | 📄 Description      |
| ------- | ------------------- |
| 1.0.0   | initial version     |
| 1.5.0   | edit(dirname) added |

<!--
## 👤 Author

Allan CORNET
-->
