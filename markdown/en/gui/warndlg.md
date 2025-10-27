# helpdlg

Creates a warning dialog box.

## 📝 Syntax

- h = warndlg()
- h = warndlg(text_warning)
- h = warndlg(text_warning, title)
- h = warndlg(text_warning, title, 'on')

## 📥 Input argument

- text_warning - a string or a cell of string: the warning message.
- title - a string: the title of the dialog box.

## 📤 Output argument

- h - a QObject handle.

## 📄 Description

<b>errordlg</b> creates an warning dialog box.

<b>h = warndlg(text_warning, title, 'on')</b> specifies whether to replace an existing dialog box having the same name.

## 💡 Examples

```matlab
h = warndlg()
```

```matlab
h = warndlg('help string')
```

```matlab
h = warndlg('help string', 'dialog title')
```

```matlab
h = warndlg('help string', 'dialog title')
h = warndlg('help string', 'dialog title', 'on')
```

## 🔗 See also

[helpdlg](../gui/helpdlg.md), [errordlg](../gui/errordlg.md), [questdlg](../gui/questdlg.md), [msgbox](../gui/msgbox.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
