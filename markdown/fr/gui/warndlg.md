# warndlg

Cree une boite de dialogue d'avertissement.

## 📝 Syntaxe

- h = warndlg
- h = warndlg(message)
- h = warndlg(message, title)
- h = warndlg(message, title, mode)

## 📥 Argument d'entrée

- message - Warning text. Use a character vector, string, or cell array of character vectors.

## 📤 Argument de sortie

- h - Graphics figure handle.

## 📄 Description


warndlg creates a warning message dialog and returns a graphics figure handle.

## 💡 Exemples

Creer une boite d avertissement.

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


## 🔗 Voir aussi

[msgbox](../gui/msgbox.md), [helpdlg](../gui/helpdlg.md), [errordlg](../gui/errordlg.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version aide API dialogue mise a jour. |

<!--
## 👤 Auteur

Allan CORNET
-->
