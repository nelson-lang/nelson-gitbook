# timetable2table

Convertir une timetable en table.

## 📝 Syntaxe

- T = timetable2table(TT)
- T = timetable2table(TT, 'ConvertRowTimes', tf)

## 📥 Argument d'entrée

- TT - Objet timetable.

## 📤 Argument de sortie

- T - Objet table.

## 📄 Description


<b>timetable2table</b> convertit une timetable en table. 

Lorsque <b>'ConvertRowTimes'</b> vaut vrai, les temps de lignes sont inseres comme premiere variable de la table.

## 💡 Exemple



```matlab
t = datetime(2024, 1, 1) + days(0:1)';
TT = timetable(t, [1; 2], 'VariableNames', {'A'});
T = timetable2table(TT, 'ConvertRowTimes', true)
```


## 🔗 Voir aussi

[table2timetable](../../table/1_create_convert_tables/table2timetable.md), [table](../../table/1_create_convert_tables/table.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
