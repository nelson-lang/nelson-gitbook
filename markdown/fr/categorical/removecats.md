# removecats

Supprimer des categories d'un tableau categoriel.

## 📝 Syntaxe

- B = removecats(A)
- B = removecats(A, oldCategories)

## 📥 Argument d'entrée

- A - Tableau categoriel d'entree.
- oldCategories - Categories a supprimer. Si omis, les categories inutilisees sont supprimees.

## 📤 Argument de sortie

- B - Tableau categoriel avec une liste de categories reduite.

## 📄 Description


<b>removecats</b> supprime des categories de la liste des categories. 

Les elements appartenant a des categories supprimees deviennent non definis.

## 💡 Exemples

Supprimer une categorie inutilisee.

```matlab
A = categorical({'red','blue'}, {'red','blue','green'}); B = removecats(A, 'green'); categories(B)
```
Supprimer une categorie utilisee et creer des elements non definis.

```matlab
A = categorical({'red','blue','green'}); B = removecats(A, 'green'); isundefined(B)
```


## 🔗 Voir aussi

[addcats](../categorical/addcats.md), [setcats](../categorical/setcats.md), [mergecats](../categorical/mergecats.md), [isundefined](../categorical/isundefined.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
