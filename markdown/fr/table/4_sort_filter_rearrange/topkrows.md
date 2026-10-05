# topkrows

Renvoyer les premieres lignes d'une table ou timetable.

## 📝 Syntaxe

- B = topkrows(A, k)
- [B, I] = topkrows(A, k, vars)

## 📥 Argument d'entrée

- A - Table ou timetable d'entree.
- k - Nombre de lignes.

## 📤 Argument de sortie

- B - Table ou timetable de sortie.
- I - Indices des lignes selectionnees.

## 📄 Description


<b>topkrows</b> renvoie les <b>k</b> premieres lignes apres tri par temps de lignes ou variables selectionnees.

## 💡 Exemple


```matlab
TT = timetable(seconds([1; 2; 3]), [10; 30; 20], 'VariableNames', {'A'});
topkrows(TT, 2, 'A')

```


## 🔗 Voir aussi

[timetable](../../table/1_create_convert_tables/timetable.md), [sort](../../data_analysis/sort.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
