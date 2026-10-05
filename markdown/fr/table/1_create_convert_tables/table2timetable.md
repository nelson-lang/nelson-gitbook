# table2timetable

Convertir une table en timetable.

## 📝 Syntaxe

- TT = table2timetable(T, 'RowTimes', rowTimes)
- TT = table2timetable(T, 'TimeStep', dt)
- TT = table2timetable(T, 'SampleRate', fs)

## 📥 Argument d'entrée

- T - Objet table.

## 📤 Argument de sortie

- TT - Objet timetable.

## 📄 Description


<b>table2timetable</b> convertit une table en timetable et attribue des temps aux lignes de sortie.

## 💡 Exemple



```matlab
T = table([1; 2; 3], 'VariableNames', {'A'});
t = datetime(2024, 1, 1) + days(0:2)';
TT = table2timetable(T, 'RowTimes', t)
```


## 🔗 Voir aussi

[timetable2table](../../table/1_create_convert_tables/timetable2table.md), [timetable](../../table/1_create_convert_tables/timetable.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
