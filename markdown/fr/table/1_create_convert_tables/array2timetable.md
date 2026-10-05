# array2timetable

Convertir un tableau homogene en timetable.

## 📝 Syntaxe

- TT = array2timetable(A, 'RowTimes', rowTimes)

## 📥 Argument d'entrée

- A - Tableau d'entree.
- rowTimes - Vecteur datetime ou duration.

## 📤 Argument de sortie

- TT - Objet timetable.

## 📄 Description


<b>array2timetable</b> convertit les colonnes de <b>A</b> en variables d'une timetable. 

Utilisez <b>'VariableNames'</b> pour fournir les noms de variables de la timetable de sortie.

## 💡 Exemple



```matlab
t = datetime(2024, 1, 1) + days(0:2)';
A = [1 10; 2 20; 3 30];
TT = array2timetable(A, 'RowTimes', t)
```


## 🔗 Voir aussi

[array2table](../../table/1_create_convert_tables/array2table.md), [timetable](../../table/1_create_convert_tables/timetable.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
