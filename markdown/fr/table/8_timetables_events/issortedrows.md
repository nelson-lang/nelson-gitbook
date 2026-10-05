# issortedrows

Determiner si les lignes d'une timetable sont triees.

## 📝 Syntaxe

- tf = issortedrows(A)

## 📥 Argument d'entrée

- A - Timetable d'entree.

## 📤 Argument de sortie

- tf - Scalaire logique.

## 📄 Description


<b>issortedrows</b> renvoie vrai quand les lignes d'une timetable sont triees par temps de lignes.

## 💡 Exemple


```matlab
TT = timetable(seconds([1; 2; 3]), [10; 20; 30], 'VariableNames', {'A'});
issortedrows(TT)

```


## 🔗 Voir aussi

[sortrows](../../table/4_sort_filter_rearrange/sortrows.md), [issorted](../../data_analysis/issorted.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
