# rmmissing

Supprime les donnees manquantes.

## 📝 Syntaxe

- B = rmmissing(A)
- B = rmmissing(A, dim)

## 📥 Argument d'entrée

- A - Tableau ou table d'entree.
- dim - Dimension de traitement.

## 📤 Argument de sortie

- B - Donnees sans lignes, colonnes ou elements manquants.

## 📄 Description

<b>rmmissing</b> supprime les donnees manquantes des tableaux et supprime les lignes ou variables contenant des valeurs manquantes dans les tables.

## 💡 Exemples

```matlab
A = [1 NaN; 2 3; NaN 4];
B = rmmissing(A)
```

```matlab
T = table([1; NaN; 3], {'a'; ''; 'c'}, 'VariableNames', {'A', 'B'});
R = rmmissing(T)
```

## 🔗 Voir aussi

[ismissing](../data_analysis/ismissing.md), [fillmissing](../data_analysis/fillmissing.md), [standardizeMissing](../data_analysis/standardizeMissing.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
