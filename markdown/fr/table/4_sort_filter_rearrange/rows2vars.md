# rows2vars

Reoriente les lignes en variables.

## 📝 Syntaxe

- T2 = rows2vars(T)
- T2 = rows2vars(T, 'VariableNamesSource', var)

## 📥 Argument d'entrée

- T - Table d'entree.

## 📤 Argument de sortie

- T2 - Table reorientee.

## 📄 Description


<b>rows2vars</b> cree des variables de table a partir des lignes de la table d'entree.

## 💡 Exemple



```matlab
T = table({'r1'; 'r2'}, [10; 20], 'VariableNames', {'Name', 'Value'});
R = rows2vars(T, 'VariableNamesSource', 'Name')
```


## 🔗 Voir aussi

[table](../../table/1_create_convert_tables/table.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
