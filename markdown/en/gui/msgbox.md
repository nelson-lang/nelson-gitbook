# msgbox

Creates a message dialog box.

## 📝 Syntax

- h = msgbox(message)
- h = msgbox(message, title)
- h = msgbox(message, title, icon)
- h = msgbox(message, title, icon, mode)
- h = msgbox(message, mode)

## 📥 Input argument

- message - Message text. Use a character vector, string array, or cell array of character vectors for multiple lines.

## 📤 Output argument

- h - Graphics figure handle.

## 📄 Description

msgbox creates a message dialog and returns a graphics figure handle. The handle can be used with get, set, close, delete, and waitfor.

## 💡 Examples

Create a message box.

```matlab
h = msgbox({'Operation', 'completed'}, 'Status', 'help', 'non-modal');
```

<img src="msgbox_example.svg" align="middle"/>
Create a plain message box.

```matlab
h = msgbox('Ready.', 'Status', 'none', 'non-modal');
close(h)
```

## 🔗 See also

[helpdlg](../gui/helpdlg.md), [warndlg](../gui/warndlg.md), [errordlg](../gui/errordlg.md), [questdlg](../gui/questdlg.md).

## 🕔 History

| Version | 📄 Description           |
| ------- | ------------------------ |
| 2.0.0   | Updated dialog API help. |

<!--
## 👤 Author

Allan CORNET
-->
