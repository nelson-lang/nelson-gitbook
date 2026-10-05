# xlswrite

Ecrire des donnees dans un fichier tableur Open XML.

## 📝 Syntaxe

- status = xlswrite(filename, A)
- status = xlswrite(filename, A, sheet)
- status = xlswrite(filename, A, sheet, range)
- [status, message] = xlswrite(...)

## 📥 Argument d'entrée

- filename - une chaine : nom de fichier .xlsx.
- A - tableau, cellule, table ou timetable a ecrire.
- sheet - nom de feuille ou indice de feuille positif.
- range - cellule de depart ou plage en notation A1.

## 📤 Argument de sortie

- status - valeur logique indiquant si l'ecriture a reussi.
- message - chaine vide en cas de succes, sinon message d'erreur.

## 📄 Description


<b>xlswrite</b> ecrit les valeurs Nelson prises en charge dans un fichier .xlsx avec le backend Open XML.

## 💡 Exemple

Ecrire puis relire une matrice.

```matlab
filename = [tempdir(), 'xlswrite_example.xlsx']; [status, message] = xlswrite(filename, magic(3), 'Data', 'A1'); values = xlsread(filename, 'Data', 'A1:C3')
```


## 🔗 Voir aussi

[xlsread](../spreadsheet/xlsread.md), [xlsfinfo](../spreadsheet/xlsfinfo.md), [writematrix](../spreadsheet/writematrix.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | support .xlsx Open XML ajoute. |

<!--
## 👤 Auteur

Allan CORNET
-->
