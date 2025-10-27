# errordlg

Creates a error dialog box.

## 📝 Syntax

- h = errordlg()
- h = errordlg(text_error)
- h = errordlg(text_error, title)
- h = errordlg(text_error, title, mode)

## 📥 Input argument

- text_error - a string or a cell of string: the error message.
- title - a string: the title of the dialog box.
- mode - a string: 'mode', 'non-modal', 'replace'.

## 📤 Output argument

- h - a QObject handle.

## 📄 Description

<b>errordlg</b> creates an error dialog box.

<b>h = errordlg(text_error, title, 'replace')</b> specifies whether to replace an existing dialog box having the same title.

<img src="errordlg_1.png"/>

## 💡 Examples

```matlab
h = errordlg()
```

```matlab
h = errordlg('error string')
```

```matlab
h = errordlg('error string', 'dialog title')
```

```matlab
h = errordlg('error string', 'dialog title')
h = errordlg('error string', 'dialog title', 'on')
```

## 🔗 See also

[warndlg](../gui/warndlg.md), [questdlg](../gui/questdlg.md), [helpdlg](../gui/helpdlg.md), [msgbox](../gui/msgbox.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
