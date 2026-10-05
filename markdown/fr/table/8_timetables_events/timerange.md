# timerange

Intervalle temporel pour indexer les lignes d'un timetable.

## 📝 Syntaxe

- S = timerange(startTime, endTime)
- S = timerange(startTime, endTime, intervalType)
- S = timerange(timePeriod, datetimeUnit)

## 📥 Argument d'entrée

- startTime, endTime - Bornes datetime, duration ou texte scalaire.
- intervalType - 'openright', 'closedleft', 'openleft', 'closedright', 'open' ou 'closed'.
- datetimeUnit - Unite calendaire utilisee pour couvrir une periode complete.

## 📤 Argument de sortie

- S - Indice de lignes pour timetable.

## 📄 Description


<b>timerange</b> cree un indice de lignes pour les timetables. L'intervalle par defaut inclut la borne de debut et exclut la borne de fin. 

Les bornes texte <b>'-inf'</b> et <b>'inf'</b> creent des intervalles non bornes d'un cote.

## 💡 Exemple



```matlab
TT = timetable(seconds((1:5)'), (10:10:50)', 'VariableNames', {'A'});
TT(timerange(seconds(2), seconds(4), 'closed'), :)
```


## 🔗 Voir aussi

[timetable](../../table/1_create_convert_tables/timetable.md), [withtol](../../table/8_timetables_events/withtol.md), [retime](../../table/8_timetables_events/retime.md), [synchronize](../../table/8_timetables_events/synchronize.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
