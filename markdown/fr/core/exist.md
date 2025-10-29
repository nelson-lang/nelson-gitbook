# exist

Vérifie l'existence d'une variable, fonction ou fichier.

## 📝 Syntaxe

- res = exist(name)
- res = exist(name, category)

## 📥 Argument d'entrée

- name - chaîne : nom de l'entité à tester
- type - chaîne : type recherché (optionnel)

## 📤 Argument de sortie

- code - un entier : code indiquant le type d'existence

## 📄 Description

Vérifie si une entité (variable, fonction, fichier, dossier, etc.) existe et retourne un code indiquant son type.

## 💡 Exemple

```matlab
exist('fileread')
fileread = 3;
exist('fileread')
clear fileread
exist('fileread')

```

## 🔗 Voir aussi

[isbuiltin](../functions_manager/isbuiltin.md), [ismacro](../functions_manager/ismacro.md), [isfile](../files_folders_functions/isfile.md), [isdir](../files_folders_functions/isdir.md), [isvar](../memory_manager/isvar.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
