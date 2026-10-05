# countcats

Compter les elements categoriels par categorie.

## 📝 Syntaxe

- counts = countcats(A)
- counts = countcats(A, dim)

## 📥 Argument d'entrée

- A - Tableau categoriel d'entree.
- dim - Dimension de comptage. Les valeurs prises en charge sont <b>1</b> et <b>2</b>.

## 📤 Argument de sortie

- counts - Comptes dans l'ordre des categories. Les elements non definis ne sont pas comptes.

## 📄 Description


<b>countcats</b> compte le nombre d'elements appartenant a chaque categorie de <b>A</b>. 

Pour les matrices, <b>dim</b> indique si le comptage se fait par colonne ou par ligne.

## 💡 Exemples

Compter les elements dans chaque categorie.

```matlab
A = categorical({'red','blue','red',''}); counts = countcats(A)
```
Compter par ligne.

```matlab
A = categorical({'red','blue'; 'red','red'}); counts = countcats(A, 2)
```


## 🔗 Voir aussi

[categories](../categorical/categories.md), [histcounts](../categorical/histcounts.md), [isundefined](../categorical/isundefined.md), [summary](../data_analysis/summary.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
