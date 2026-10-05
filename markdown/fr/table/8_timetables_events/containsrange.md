# containsrange

Determiner si les temps de lignes contiennent une plage.

## 📝 Syntaxe

- [tf, tfRow] = containsrange(TT, timeSpec)

## 📥 Argument d'entrée

- TT - Timetable d'entree.
- timeSpec - Specification de plage de temps.

## 📤 Argument de sortie

- tf - Scalaire logique.
- tfRow - Selecteur logique de lignes.

## 📄 Description


<b>containsrange</b> teste si les temps de lignes couvrent la plage de temps specifiee.

## 💡 Exemple


```matlab
TT = timetable(seconds([1; 2; 3]), [10; 20; 30], 'VariableNames', {'A'});
containsrange(TT, seconds([1.5; 2.5]))

```


## 🔗 Voir aussi

[withinrange](../../table/8_timetables_events/withinrange.md), [overlapsrange](../../table/8_timetables_events/overlapsrange.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
