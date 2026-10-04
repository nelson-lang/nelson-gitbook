# xlsread

Lire les donnees d'un fichier tableur Open XML.

## 📝 Syntaxe

- num = xlsread(filename)
- num = xlsread(filename, sheet)
- num = xlsread(filename, sheet, range)
- [num, txt, raw] = xlsread(...)

## 📥 Argument d'entrée

- filename - une chaine : nom de fichier .xlsx.
- sheet - nom de feuille ou indice de feuille positif.
- range - plage en notation A1, par exemple 'A1' ou 'A1:C4'.

## 📤 Argument de sortie

- num - matrice numerique. Les cellules texte donnent NaN.
- txt - cellule contenant les valeurs texte.
- raw - cellule contenant les valeurs importees.

## 📄 Description

<b>xlsread</b> importe les donnees de fichiers .xlsx avec le backend Open XML.

## 💡 Exemple

Lire une plage numerique.

```matlab
filename = [tempdir(), 'xlsread_example.xlsx']; xlswrite(filename, [1 2; 3 4], 'Data', 'B2'); [num, txt, raw] = xlsread(filename, 'Data', 'B2:C3')
```

## 🔗 Voir aussi

[xlswrite](../spreadsheet/xlswrite.md), [xlsfinfo](../spreadsheet/xlsfinfo.md), [readmatrix](../spreadsheet/readmatrix.md).

## 🕔 Historique

| Version | 📄 Description                 |
| ------- | ------------------------------ |
| 2.0.0   | support .xlsx Open XML ajoute. |

<!--
## 👤 Auteur

Allan CORNET
-->
