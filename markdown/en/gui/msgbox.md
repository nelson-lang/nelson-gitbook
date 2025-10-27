# msgbox

Creates a message dialog box.

## 📝 Syntax

- h = msgbox(message)
- h = msgbox(message, mode)
- h = msgbox(message, title)
- h = msgbox(message, title, mode)
- h = msgbox(message, title, icon)
- h = msgbox(message, title, icon, mode)

## 📥 Input argument

- message - a string or a cell of string: the message to display.
- title - a string: the title of the dialog box.
- icon - a string: 'none', 'error', 'help', 'warn' or 'question'.
- mode - a string: 'modal', 'on' or 'nonmodal'.

## 📤 Output argument

- h - a QObject handle.

## 📄 Description

<b>msgbox</b> creates an message dialog box.

<b>h = msgbox(message, title, 'on')</b> specifies whether to replace an existing dialog box having the same name.

## 💡 Examples

```matlab
h = msgbox('help string')
```

```matlab
h = msgbox('help string', 'dialog title')
```

```matlab
h = msgbox('help string', 'dialog title')
h = msgbox('help string', 'dialog title', 'on')
```

## 🔗 See also

[helpdlg](../gui/helpdlg.md), [errordlg](../gui/errordlg.md), [questdlg](../gui/questdlg.md), [warndlg](../gui/warndlg.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
