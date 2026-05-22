# allbetween

Determine si tous les elements sont compris entre des bornes.

## 📝 Syntaxe

- tf = allbetween(A, lower, upper)
- tf = allbetween(A, lower, upper, intervalType)
- tf = allbetween(..., name, value)

## 📥 Argument d'entrée

- A - tableau ou table.
- lower, upper - bornes inferieure et superieure.
- intervalType - 'closed', 'open', 'openleft', 'openright', 'closedleft' ou 'closedright'.

## 📤 Argument de sortie

- tf - scalaire logique.

## 📄 Description

<b>allbetween</b> renvoie true si chaque element selectionne de <b>A</b> est dans l'intervalle defini par <b>lower</b> et <b>upper</b>.

## 💡 Exemples

```matlab
A = [2 3 4];
allbetween(A, 2, 4)
allbetween(A, 2, 4, 'open')
```

```matlab
T = table([2; 3; 4], [10; 11; 12], 'VariableNames', {'A', 'B'});
allbetween(T, 2, 4, 'DataVariables', 'A')
allbetween(T, 2, 12, 'DataVariables', {'A', 'B'})
```

## 🔗 Voir aussi

[isbetween](../data_analysis/isbetween.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.17.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
