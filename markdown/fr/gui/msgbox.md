# msgbox

Cree une boite de dialogue de message.

## 📝 Syntaxe

- h = msgbox(message)
- h = msgbox(message, title)
- h = msgbox(message, title, icon)
- h = msgbox(message, title, icon, mode)
- h = msgbox(message, mode)

## 📥 Argument d'entrée

- message - Message text. Use a character vector, string array, or cell array of character vectors for multiple lines.

## 📤 Argument de sortie

- h - Graphics figure handle.

## 📄 Description


msgbox creates a message dialog and returns a graphics figure handle. The handle can be used with get, set, close, delete, and waitfor.

## 💡 Exemples

Creer une boite de message.

```matlab
h = msgbox({'Operation', 'completed'}, 'Status', 'help', 'non-modal');
```
<img src="msgbox_example.svg" align="middle"/>
Create a plain message box.

```matlab
h = msgbox('Ready.', 'Status', 'none', 'non-modal');
close(h)
```


## 🔗 Voir aussi

[helpdlg](../gui/helpdlg.md), [warndlg](../gui/warndlg.md), [errordlg](../gui/errordlg.md), [questdlg](../gui/questdlg.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version aide API dialogue mise a jour. |

<!--
## 👤 Auteur

Allan CORNET
-->
