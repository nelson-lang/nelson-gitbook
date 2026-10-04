# exist

Verifie l'existence d'une variable, fonction ou fichier.

## 📝 Syntaxe

- res = exist(name)
- res = exist(name, category)

## 📥 Argument d'entrée

- name - chaine : nom de l'entite a tester
- type - chaine : type recherche (optionnel) : 'var', 'builtin', 'file', 'dir' ou 'class'

## 📤 Argument de sortie

- code - un entier : code indiquant le type d'existence

## 📄 Description

Verifie si une entite (variable, fonction, fichier, dossier, classe, etc.) existe et retourne un code indiquant son type.

<b>8</b> indique une classe.

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
