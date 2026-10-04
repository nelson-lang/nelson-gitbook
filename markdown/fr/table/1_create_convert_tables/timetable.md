# timetable

Creer une timetable a partir de variables et de temps de lignes.

## 📝 Syntaxe

- TT = timetable(rowTimes, var1, ..., varN)
- TT = timetable(var1, ..., varN, 'RowTimes', rowTimes)
- TT = timetable('Size', sz, 'VariableTypes', types)

## 📥 Argument d'entrée

- rowTimes - Vecteur datetime ou duration utilise comme temps de lignes.
- var1, ..., varN - Variables avec une ligne par temps de ligne.

## 📤 Argument de sortie

- TT - Objet timetable.

## 📄 Description

<b>timetable</b> cree une timetable, un objet tabulaire dont les lignes sont identifiees par des temps.

Les temps de lignes peuvent etre fournis comme premier argument ou avec l'argument nom-valeur <b>'RowTimes'</b>.

Les noms de variables, noms de dimensions, description, donnees utilisateur et proprietes personnalisees sont stockes dans <b>TT.Properties</b>.

## 💡 Exemple

```matlab
t = datetime(2024, 1, 1) + days(0:2)';
TT = timetable(t, [10; 20; 30], 'VariableNames', {'A'});
TT.Properties.RowTimes
```

## 🔗 Voir aussi

[table](../../table/table.md), [array2timetable](../../table/array2timetable.md), [table2timetable](../../table/table2timetable.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
