# errordlg

Creates an error dialog box.

## 📝 Syntax

- h = errordlg
- h = errordlg(message)
- h = errordlg(message, title)
- h = errordlg(message, title, mode)

## 📥 Input argument

- message - Error text. Use a character vector, string, or cell array of character vectors.

## 📤 Output argument

- h - Graphics figure handle.

## 📄 Description

errordlg creates an error message dialog and returns a graphics figure handle.

## 💡 Examples

Create an error dialog.

```matlab
h = errordlg('Invalid value.', 'Error', 'non-modal');
```

<img src="errordlg_example.svg" align="middle"/>
Create the default error dialog.

```matlab
h = errordlg();
close(h)
```

## 🔗 See also

[msgbox](../gui/msgbox.md), [helpdlg](../gui/helpdlg.md), [warndlg](../gui/warndlg.md).

## 🕔 History

| Version | 📄 Description           |
| ------- | ------------------------ |
| 2.0.0   | Updated dialog API help. |

<!--
## 👤 Author

Allan CORNET
-->
