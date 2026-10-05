# warndlg

Creates a warning dialog box.

## 📝 Syntax

- h = warndlg
- h = warndlg(message)
- h = warndlg(message, title)
- h = warndlg(message, title, mode)

## 📥 Input argument

- message - Warning text. Use a character vector, string, or cell array of character vectors.

## 📤 Output argument

- h - Graphics figure handle.

## 📄 Description


warndlg creates a warning message dialog and returns a graphics figure handle.

## 💡 Examples

Create a warning dialog.

```matlab
f = warndlg('Check the input value.', 'Warning', 'non-modal');
drawnow();
```
<img src="warndlg_example.svg" align="middle"/>
Create a warning dialog with several lines.

```matlab
h = warndlg({'Input is empty.', 'Default values will be used.'}, 'Warning', 'non-modal');
close(h)
```


## 🔗 See also

[msgbox](../gui/msgbox.md), [helpdlg](../gui/helpdlg.md), [errordlg](../gui/errordlg.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Updated dialog API help. |

<!--
## 👤 Author

Allan CORNET
-->
