# nelson.io.RowFilter

Objet qui stocke une expression de filtre de lignes.

## 📝 Syntaxe

- rf = rowfilter(names)
- expr = rf.VariableName operator value
- T = expr.apply(T)

## 📥 Argument d'entrée

- names - noms de variables specifies comme tableau de chaines ou cellule de vecteurs de caracteres.
- T - une table ou timetable.

## 📤 Argument de sortie

- rf - un objet <b>nelson.io.RowFilter</b>.
- expr - un objet <b>nelson.io.RowFilter</b> contenant une expression de filtre.

## 📄 Description


<b>nelson.io.RowFilter</b> stocke les noms de variables et l'expression utilisee pour selectionner des lignes. 

Les noms de variables sont accessibles par notation par point. Les operateurs relationnels et logiques creent une expression de filtre. L'expression est evaluee quand <b>apply</b> est appele ou quand l'objet est utilise comme argument <b>RowFilter</b> pour les fonctions de lecture Parquet. 

La methode <b>variables</b> retourne les noms references par l'expression.

## 💡 Exemple



```matlab
T = table([1; 2; 3; 4], [10; 20; 30; 40], ...
  'VariableNames', {'Id', 'Value'});
rf = rowfilter({'Id', 'Value'});
expr = rf.Id > 1 & rf.Value <= 30;
expr.variables()
R = expr.apply(T)
```


## 🔗 Voir aussi

[rowfilter](../parquet/rowfilter.md), [parquetread](../parquet/parquetread.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
