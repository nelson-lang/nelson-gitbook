# mustBeBetween

Valide que tous les elements sont compris dans une plage specifiee.

## 📝 Syntaxe

- mustBeBetween(A, lower, upper)
- mustBeBetween(A, lower, upper, intervalType)
- mustBeBetween(..., name, value)
- mustBeBetween(..., argPosition)

## 📥 Argument d'entrée

- A - tableau ou table a valider.
- lower, upper - bornes inferieure et superieure.
- intervalType - 'closed', 'open', 'openleft', 'openright', 'closedleft' ou 'closedright'.
- name, value - Pour les tables, prend en charge 'DataVariables'.
- argPosition - entier positif optionnel : position de l'argument d'entree.

## 📄 Description

<b>mustBeBetween</b> leve une erreur si un element selectionne de <b>A</b> est en dehors de l'intervalle defini par <b>lower</b> et <b>upper</b>. L'intervalle par defaut est ferme.

## 💡 Exemples

```matlab
mustBeBetween([3 4 5], 0, 5)
mustBeBetween([3 4], 0, 5, 'open')
```

```matlab
T = table([2; 3; 4], [10; 11; 12], 'VariableNames', {'A', 'B'});
mustBeBetween(T, 2, 4, 'DataVariables', 'A')
```

## 🔗 Voir aussi

[allbetween](../data_analysis/allbetween.md), [isbetween](../data_analysis/isbetween.md), [mustBeInRange](../validators/mustBeInRange.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.17.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
