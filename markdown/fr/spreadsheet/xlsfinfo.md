# xlsfinfo

Retourner les informations d'un fichier tableur Open XML.

## 📝 Syntaxe

- status = xlsfinfo(filename)
- [status, sheets, format] = xlsfinfo(filename)

## 📥 Argument d'entrée

- filename - une chaine : nom de fichier .xlsx.

## 📤 Argument de sortie

- status - chaine de statut du format, ou chaine vide si le fichier ne peut pas etre lu.
- sheets - cellule contenant les noms de feuilles.
- format - chaine de format.

## 📄 Description

<b>xlsfinfo</b> retourne les metadonnees des fichiers .xlsx pris en charge par le backend Open XML.

## 💡 Exemple

Lister les feuilles d'un classeur.

```matlab
filename = [tempdir(), 'xlsfinfo_example.xlsx']; xlswrite(filename, [1 2], 'Run1', 'A1'); [status, sheets, format] = xlsfinfo(filename)
```

## 🔗 Voir aussi

[xlsread](../spreadsheet/xlsread.md), [xlswrite](../spreadsheet/xlswrite.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
