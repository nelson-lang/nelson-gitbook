# grpstats

Statistiques de synthese par groupe.

## 📝 Syntaxe

- tblstats = grpstats(tbl, groupvars)
- tblstats = grpstats(tbl, groupvars, whichstats)
- tblstats = grpstats(tbl, groupvars, whichstats, 'DataVars', datavars)
- stats = grpstats(X, group)
- [stats1, ..., statsN] = grpstats(X, group, whichstats)
- [...] = grpstats(..., 'Alpha', alpha)

## 📄 Description

<b>grpstats</b> calcule des statistiques de synthese pour chaque groupe observe.

Les noms de statistiques pris en charge sont mean, sem, std, var, min, max, range, median, mode, numel, gname, meanci et predci. Les fonctions anonymes sont aussi acceptees pour les entrees tableau numerique et les variables de donnees de table.

## 💡 Exemple

```matlab
X = [1 10; 2 20; 3 30; 4 40];
g = [1 1 2 2]';
[m, s] = grpstats(X, g, {'mean', 'std'})
```

## 🔗 Voir aussi

[groupsummary](../../data_analysis/groupsummary.md), [tabulate](../../statistics/tabulate.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
