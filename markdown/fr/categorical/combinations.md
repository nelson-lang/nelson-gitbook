# combinations

Generer toutes les combinaisons de valeurs.

## 📝 Syntaxe

- T = combinations(A1, A2, ...)

## 📥 Argument d'entrée

- A1, A2, ... - Tableaux d'entree. Chaque entree est convertie en colonne avant la creation des combinaisons.

## 📤 Argument de sortie

- T - Table contenant une ligne pour chaque combinaison des elements d'entree.

## 📄 Description

<b>combinations</b> construit une table contenant le produit cartesien des tableaux fournis.

Quand une variable d'entree a un nom, ce nom est reutilise comme nom de variable de table.

## 💡 Exemple

Combiner deux tableaux categoriels.

```matlab
A = categorical({'small','large'}); B = categorical({'red','blue'}); T = combinations(A, B)
```

## 🔗 Voir aussi

[categorical](../categorical/categorical.md), [table](../table/table.md), [height](../table/height.md), [width](../table/width.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
