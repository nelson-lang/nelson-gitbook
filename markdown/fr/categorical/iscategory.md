# iscategory

Determiner si des noms sont des categories.

## 📝 Syntaxe

- tf = iscategory(A, names)

## 📥 Argument d'entrée

- A - Tableau categoriel d'entree.
- names - Nom de categorie, tableau de strings, tableau de cellules de chaines de caracteres ou pattern a tester.

## 📤 Argument de sortie

- tf - Resultat logique de meme taille que <b>names</b>, sauf pour un pattern ou le resultat est scalaire.

## 📄 Description


<b>iscategory</b> teste si les noms demandes sont presents dans la liste des categories de <b>A</b>. 

Les elements non definis ne creent pas de categorie.

## 💡 Exemple

Tester plusieurs noms de categories.

```matlab
A = categorical({'red','blue'}); tf = iscategory(A, {'red','green'})
```


## 🔗 Voir aussi

[categories](../categorical/categories.md), [addcats](../categorical/addcats.md), [removecats](../categorical/removecats.md), [isundefined](../categorical/isundefined.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
