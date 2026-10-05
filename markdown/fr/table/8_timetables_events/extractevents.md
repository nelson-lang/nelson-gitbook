# extractevents

Extraire une table d'evenements de lignes d'une timetable.

## 📝 Syntaxe

- ET = extractevents(TT, rows)
- ET = extractevents(TT, labels)
- ET = extractevents(..., Name, Value)
- [ET, TT2] = extractevents(...)

## 📥 Argument d'entrée

- TT - Timetable d'entree.
- rows - Lignes de <b>TT</b> : numeros de lignes, masque logique, instants (datetime ou duration), timerange ou ':'.
- labels - Vecteur categorical avec un element par ligne de <b>TT</b> : les elements definis sont les libelles des evenements, les lignes a <undefined> ne sont pas des evenements.
- Name, Value - <b>EventLabels</b>, <b>EventLengths</b>, <b>EventEnds</b> : valeurs (scalaire ou une par evenement) ; <b>EventLabelsVariable</b>, <b>EventLengthsVariable</b>, <b>EventEndsVariable</b> : variable de <b>TT</b> qui les contient ; <b>EventDataVariables</b> : variables de <b>TT</b> copiees dans la table d'evenements ; <b>PreserveEventVariables</b> : true pour garder ces variables dans <b>TT2</b> (false par defaut).

## 📤 Argument de sortie

- ET - Table d'evenements : les instants des lignes selectionnees et les variables d'evenements.
- TT2 - Copie de <b>TT</b> sans les variables copiees dans <b>ET</b>, sauf si <b>PreserveEventVariables</b> vaut true.

## 📄 Description


<b>extractevents</b> cree une table d'evenements a partir de lignes d'une timetable. Seules les variables nommees par les options sont copiees : d'abord la variable des durees ou des fins d'evenements, puis la variable des libelles, puis les variables de donnees, puis les variables creees a partir des valeurs <b>EventLabels</b>, <b>EventLengths</b> et <b>EventEnds</b>. 

Une variable d'evenement ne peut pas aussi figurer dans <b>EventDataVariables</b>. <b>PreserveEventVariables</b> necessite au moins une option de variable et la deuxieme sortie. 

Pour lire la table d'evenements attachee a une timetable, utiliser <b>TT.Properties.Events</b>.

## 💡 Exemples


```matlab
TT = timetable(seconds([1; 2; 3; 4]), [10; 20; 30; 40], ["a"; "b"; "c"; "d"], 'VariableNames', {'A', 'L'});
ET = extractevents(TT, [2 4], 'EventLabelsVariable', 'L')
[ET, TT2] = extractevents(TT, timerange(seconds(2), seconds(4)), 'EventDataVariables', 'A')

```

```matlab
TT = timetable(seconds([1; 2; 3; 4]), [10; 20; 30; 40], 'VariableNames', {'A'});
ET = extractevents(TT, categorical(["start"; ""; ""; "stop"]))

```


## 🔗 Voir aussi

[syncevents](../../table/8_timetables_events/syncevents.md), [eventtable](../../table/8_timetables_events/eventtable.md), [timetable](../../table/1_create_convert_tables/timetable.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
