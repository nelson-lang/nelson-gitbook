# withtol

Tolerance temporelle pour l'indexation des lignes d'une timetable.

## 📝 Syntaxe

- S = withtol(rowTimes, tol)

## 📥 Argument d'entrée

- rowTimes - Vecteur datetime ou duration, ou texte converti en datetime.
- tol - Duration scalaire positive ou nulle.

## 📤 Argument de sortie

- S - Indice de lignes de timetable.

## 📄 Description


<b>withtol</b> cree un indice de lignes qui selectionne les lignes d'une timetable dont les instants sont a moins de <b>tol</b> des instants de <b>rowTimes</b> (bornes incluses). Les lignes sont listees instant par instant, dans l'ordre de <b>rowTimes</b>. 

Il s'utilise dans <b>TT(S, vars)</b>, <b>TT{S, vars}</b>, <b>TT.name(S)</b>, ainsi que dans les affectations et suppressions. 

La tolerance doit etre inferieure a la moitie du plus petit intervalle entre instants distincts de <b>rowTimes</b>, pour qu'aucune ligne ne soit selectionnee deux fois. Les instants doivent avoir le meme type que les instants de la timetable.

## 💡 Exemple


```matlab
TT = timetable(seconds([1; 2; 2.05; 3; 4]), (1:5)', 'VariableNames', {'A'});
S = withtol(seconds([2 3.9]), seconds(0.2))
TT(S, :)
TT.A(withtol(seconds(2), seconds(0.1)))

```


## 🔗 Voir aussi

[timerange](../../table/8_timetables_events/timerange.md), [timetable](../../table/1_create_convert_tables/timetable.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
