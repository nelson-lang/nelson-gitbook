# helpdlg

Cree une boite de dialogue d'aide.

## 📝 Syntaxe

- h = helpdlg
- h = helpdlg(message)
- h = helpdlg(message, title)

## 📥 Argument d'entrée

- message - Help text. Use a character vector, string, or cell array of character vectors.

## 📤 Argument de sortie

- h - Graphics figure handle.

## 📄 Description


helpdlg creates a help message dialog and returns a graphics figure handle.

## 💡 Exemples

Creer une boite d aide.

```matlab
h = helpdlg('Use the OK button to close this dialog.', 'Help');
```
<img src="helpdlg_example.svg" align="middle"/>
Display several help lines.

```matlab
h = helpdlg({'Select a file.', 'Then press Open.'}, 'Help');
close(h)
```


## 🔗 Voir aussi

[msgbox](../gui/msgbox.md), [warndlg](../gui/warndlg.md), [errordlg](../gui/errordlg.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version aide API dialogue mise a jour. |

<!--
## 👤 Auteur

Allan CORNET
-->
