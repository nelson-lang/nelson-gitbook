# uigetdir

Ouvre une boîte de dialogue pour sélectionner un répertoire.

## 📝 Syntaxe

- dir_ans = uigetdir()
- dir_ans = uigetdir(path)
- dir_ans = uigetdir(path, title)

## 📥 Argument d'entrée

- path - a string: initial path
- title - a string: title of the dialog box

## 📤 Argument de sortie

- dir_ans - a string (returned path) or 0 if dialogbox is canceled

## 📄 Description

<b>uigetdir</b> ouvre une boîte de dialogue pour sélectionner un répertoire.

Si le chemin est incorrect ou non fourni, le répertoire de travail courant sera utilisé.

## 💡 Exemple

```matlab
A = uigetdir();
```

## 🔗 Voir aussi

[pwd](../files_folders_functions/pwd.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
