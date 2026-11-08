# edit

function editor.

## 📝 Syntax

- edit()
- edit filename
- edit function\_name

## 📥 Input argument

- filename - a string: filename to open.
- function\_name - a string: function name

## 📄 Description


<b>edit</b> opens a new file called untitled.m in the nelson's editor. 

If <b>function\_name</b> is the name of a defined nelson function <b>edit(function\_name)</b> try to open the associated file function\_name.m . 

<b>edit(dirname)</b> opens all .m available in <b>dirname</b>. 

A Notebook document (<b>.nlx</b>) opens in the Notebook editor, not in the text editor: a tab of the web desktop, or the Notebook window of the Qt desktop. Without a desktop (nelson-cli, nelson-adv-cli) it is an error.

## 💡 Example



```matlab
edit('edit')
```


## 🔗 See also

[smartindent](../interpreter/smartindent.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 1.5.0   | edit(dirname) added |

<!--
## 👤 Author

Allan CORNET
-->
