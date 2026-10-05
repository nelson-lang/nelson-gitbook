# unstack

Deplie des lignes en variables de table.

## 📝 Syntaxe

- U = unstack(S, dataVar, indicatorVar)

## 📥 Argument d'entrée

- S - Table empilee.
- dataVar - Nom de la variable de donnees.
- indicatorVar - Nom de la variable indicatrice.

## 📤 Argument de sortie

- U - Table depliee.

## 📄 Description


<b>unstack</b> cree des variables a partir des valeurs d'une variable indicatrice.

## 💡 Exemple



```matlab
S = table({'a'; 'a'; 'b'; 'b'}, {'X'; 'Y'; 'X'; 'Y'}, [1; 3; 2; 4], 'VariableNames', {'ID', 'Measure', 'Value'});
U = unstack(S, 'Value', 'Measure')
```


## 🔗 Voir aussi

[stack](../../table/4_sort_filter_rearrange/stack.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
