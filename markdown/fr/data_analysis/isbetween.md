# isbetween

Determine les elements compris entre des bornes inferieure et superieure.

## 📝 Syntaxe

- TF = isbetween(A, lower, upper)
- TF = isbetween(A, lower, upper, intervalType)
- TF = isbetween(..., name, value)

## 📥 Argument d'entrée

- A - tableau ou table.
- lower, upper - bornes inferieure et superieure.
- intervalType - 'closed', 'open', 'openleft', 'openright', 'closedleft' ou 'closedright'.
- name, value - Pour les tables, prend en charge 'DataVariables' et 'OutputFormat'.

## 📤 Argument de sortie

- TF - tableau logique ou table logique.

## 📄 Description

<b>isbetween</b> renvoie true lorsque <b>A</b> est dans l'intervalle defini par <b>lower</b> et <b>upper</b>. L'intervalle par defaut est ferme.

## 💡 Exemples

```matlab
A = [1 2 3 4 5];
isbetween(A, 2, 4)
isbetween(A, 2, 4, 'open')
```

```matlab
T = table([1; 2; 3], [4; 5; 6], 'VariableNames', {'A', 'B'});
isbetween(T, 2, 5)
isbetween(T, 2, 5, 'DataVariables', 'B', 'OutputFormat', 'tabular')
```

## 🔗 Voir aussi

[allbetween](../data_analysis/allbetween.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.17.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
