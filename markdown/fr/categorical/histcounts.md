# histcounts

Compter les valeurs categorielles pour des resumes de type histogramme.

## 📝 Syntaxe

- counts = histcounts(A)

## 📥 Argument d'entrée

- A - Tableau categoriel d'entree.

## 📤 Argument de sortie

- counts - Comptes pour chaque categorie, dans l'ordre des categories.

## 📄 Description


<b>histcounts</b> retourne les comptes de categories d'un tableau categoriel. 

Le resultat est equivalent a <b>countcats(A)</b>; les elements non definis sont ignores.

## 💡 Exemple

Compter les valeurs de chaque categorie.

```matlab
A = categorical({'red','blue','red'}); counts = histcounts(A)
```


## 🔗 Voir aussi

[countcats](../categorical/countcats.md), [categories](../categorical/categories.md), [isundefined](../categorical/isundefined.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
