# errordlg

Cree une boite de dialogue d'erreur.

## 📝 Syntaxe

- h = errordlg
- h = errordlg(message)
- h = errordlg(message, title)
- h = errordlg(message, title, mode)

## 📥 Argument d'entrée

- message - Error text. Use a character vector, string, or cell array of character vectors.

## 📤 Argument de sortie

- h - Graphics figure handle.

## 📄 Description

errordlg creates an error message dialog and returns a graphics figure handle.

## 💡 Exemples

Creer une boite d erreur.

```matlab
h = errordlg('Invalid value.', 'Error', 'non-modal');
```

<img src="errordlg_example.svg" align="middle"/>
Create the default error dialog.

```matlab
h = errordlg();
close(h)
```

## 🔗 Voir aussi

[msgbox](../gui/msgbox.md), [helpdlg](../gui/helpdlg.md), [warndlg](../gui/warndlg.md).

## 🕔 Historique

| Version | 📄 Description                         |
| ------- | -------------------------------------- |
| 2.0.0   | version aide API dialogue mise a jour. |

<!--
## 👤 Auteur

Allan CORNET
-->
