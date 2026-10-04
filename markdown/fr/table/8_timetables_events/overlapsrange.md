# overlapsrange

Determiner si les temps de lignes chevauchent une plage.

## 📝 Syntaxe

- [tf, tfRow] = overlapsrange(TT, timeSpec)

## 📥 Argument d'entrée

- TT - Timetable d'entree.
- timeSpec - Specification de plage de temps.

## 📤 Argument de sortie

- tf - Scalaire logique.
- tfRow - Selecteur logique de lignes.

## 📄 Description

<b>overlapsrange</b> teste si les temps de lignes chevauchent la plage de temps specifiee.

## 💡 Exemple

```matlab
TT = timetable(seconds([1; 2; 3]), [10; 20; 30], 'VariableNames', {'A'});
overlapsrange(TT, seconds([2; 4]))

```

## 🔗 Voir aussi

[withinrange](../../table/withinrange.md), [containsrange](../../table/containsrange.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
