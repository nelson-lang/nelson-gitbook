# missing

Return a missing value.

## 📝 Syntaxe

- m = missing()

## 📤 Argument de sortie

- m - une valeur manquante utilisable dans les tableaux et les tables

## 📄 Description

<b>missing</b> renvoie une valeur spéciale représentant une donnée manquante (non définie). Lorsqu'elle est assignée dans un tableau ou une table, la valeur <b>missing</b> est automatiquement convertie en la valeur manquante standard utilisée par le type de données du tableau.

## 💡 Exemple

```matlab

A = missing()
A = double([1, 2, missing()])
B = string(["foo", missing()])
C = struct("Name", "Alice", "Age", missing())

```

## 🔗 Voir aussi

[ismissing](../data_analysis/ismissing.md), [missing](../types/missing.md), [NaN](../constructors_functions/NaN.md), [string](../string/string.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.15.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
