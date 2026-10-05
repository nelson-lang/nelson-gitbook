# withinrange

Trouver les lignes d'une timetable dans une plage de temps.

## 📝 Syntaxe

- [tf, tfRow] = withinrange(TT, timeSpec)

## 📥 Argument d'entrée

- TT - Timetable d'entree.
- timeSpec - Specification de plage de temps.

## 📤 Argument de sortie

- tf - Scalaire logique.
- tfRow - Selecteur logique de lignes.

## 📄 Description


<b>withinrange</b> teste si les temps de lignes sont dans une plage de temps specifiee.

## 💡 Exemple


```matlab
TT = timetable(seconds([1; 2; 3]), [10; 20; 30], 'VariableNames', {'A'});
withinrange(TT, seconds([1; 2]))

```


## 🔗 Voir aussi

[containsrange](../../table/8_timetables_events/containsrange.md), [overlapsrange](../../table/8_timetables_events/overlapsrange.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
