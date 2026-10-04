# rowfun

Applique une fonction aux lignes d'une table.

## 📝 Syntaxe

- R = rowfun(fun, T)
- R = rowfun(fun, T, 'InputVariables', vars)

## 📥 Argument d'entrée

- fun - Fonction.
- T - Table d'entree.

## 📤 Argument de sortie

- R - Resultat sous forme de table, tableau ou cellule selon OutputFormat.

## 📄 Description

<b>rowfun</b> applique une fonction a chaque ligne avec les variables selectionnees comme entrees.

## 💡 Exemple

```matlab
T = table([1; 2], [10; 20], 'VariableNames', {'X', 'Y'});
R = rowfun(@(x, y) x + y, T, 'InputVariables', {'X', 'Y'}, 'OutputVariableNames', 'Sum')
```

## 🔗 Voir aussi

[varfun](../../table/varfun.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
