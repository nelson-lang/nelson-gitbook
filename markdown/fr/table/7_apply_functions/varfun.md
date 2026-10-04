# varfun

Applique une fonction aux variables d'une table.

## 📝 Syntaxe

- R = varfun(fun, T)
- R = varfun(fun, T, 'InputVariables', vars)

## 📥 Argument d'entrée

- fun - Fonction.
- T - Table d'entree.

## 📤 Argument de sortie

- R - Resultat sous forme de table, tableau ou cellule selon OutputFormat.

## 📄 Description

<b>varfun</b> applique une fonction independamment aux variables selectionnees.

## 💡 Exemple

```matlab
T = table([1; 2; 4], [10; 20; 30], 'VariableNames', {'X', 'Y'});
R = varfun(@mean, T)
```

## 🔗 Voir aussi

[rowfun](../../table/rowfun.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
