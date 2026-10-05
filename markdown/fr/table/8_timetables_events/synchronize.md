# synchronize

Synchroniser des timetables sur des temps communs.

## 📝 Syntaxe

- TT = synchronize(TT1, TT2)
- TT = synchronize(TT1, TT2, newTimeBasis, method)
- TT = synchronize(TT1, TT2, newTimes, method)
- TT = synchronize(TT1, TT2, 'regular', method, 'TimeStep', dt)

## 📥 Argument d'entrée

- TT1, TT2 - Timetables d'entree.
- newTimeBasis - 'union', 'intersection', 'first' ou 'last'.
- method - Methode utilisee pour retimer chaque timetable en entree.

## 📤 Argument de sortie

- TT - Timetable synchronisee.

## 📄 Description


<b>synchronize</b> combine des timetables et aligne leurs variables sur des temps de lignes communs. 

Les bases temporelles prises en charge incluent union, intersection, first, last, les grilles regulieres, les pas nommes et les vecteurs temporels explicites. 

La methode de retiming est transmise a <b>retime</b>, y compris les methodes de remplissage, voisinage, interpolation et agregation.

## 💡 Exemple



```matlab
t = datetime(2024, 1, 1) + days(0:1)';
TT1 = timetable(t, [1; 2], 'VariableNames', {'A'});
TT2 = timetable(t, [10; 20], 'VariableNames', {'B'});
TT = synchronize(TT1, TT2)
```


## 🔗 Voir aussi

[retime](../../table/8_timetables_events/retime.md), [timetable](../../table/1_create_convert_tables/timetable.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
