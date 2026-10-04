# isundefined

Trouver les elements categoriels non definis.

## 📝 Syntaxe

- tf = isundefined(A)

## 📥 Argument d'entrée

- A - Tableau d'entree.

## 📤 Argument de sortie

- tf - Tableau logique de meme taille que <b>A</b>.

## 📄 Description

<b>isundefined</b> retourne <b>true</b> pour les elements categoriels qui n'appartiennent a aucune categorie.

Pour une entree non categorielle, le resultat est un tableau logique de valeurs <b>false</b>.

## 💡 Exemple

Localiser les valeurs categorielles non definies.

```matlab
A = categorical({'red','','blue'}); tf = isundefined(A)
```

## 🔗 Voir aussi

[categorical](../categorical/categorical.md), [categories](../categorical/categories.md), [setcats](../categorical/setcats.md), [countcats](../categorical/countcats.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
