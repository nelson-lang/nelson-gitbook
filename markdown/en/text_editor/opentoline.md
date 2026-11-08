# opentoline

opens a file in the editor at a line.

## 📝 Syntax

- opentoline(filename, linenumber)
- opentoline(filename, linenumber, columnnumber)

## 📥 Input argument

- filename - a string: path of the file to open.
- linenumber - a number: line to place the cursor on (1 or more).
- columnnumber - a number: column of that line (1 or more); the end of a short line is the limit.

## 📄 Description


<b>opentoline</b> opens <b>filename</b> in the text editor and places the cursor at <b>linenumber</b>, at the start of the line or at <b>columnnumber</b>. 

The line numbers printed by the debugger at a stop, and the locations of error messages, are links that call the same behaviour in the Qt and web desktops.

## 💡 Example



```matlab
opentoline(which('opentoline'), 10, 3)
```


## 🔗 See also

[editor](../text_editor/editor.md), [edit](../text_editor/edit.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
