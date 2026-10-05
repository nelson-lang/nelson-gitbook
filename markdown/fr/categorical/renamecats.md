# renamecats

Renommer les categories d'un tableau categoriel.

## 📝 Syntaxe

- B = renamecats(A, newNames)
- B = renamecats(A, oldNames, newNames)

## 📥 Argument d'entrée

- A - Tableau categoriel d'entree.
- oldNames - Noms de categories existantes a renommer.
- newNames - Nouveaux noms. Avec deux entrees, il faut fournir un nom pour chaque categorie.

## 📤 Argument de sortie

- B - Tableau categoriel dont les noms de categories ont ete modifies sans changer les codes.

## 📄 Description


<b>renamecats</b> modifie les libelles de categories tout en conservant les elements dans leurs categories. 

Les nouveaux noms doivent etre valides et uniques apres l'operation.

## 💡 Exemples

Renommer une categorie.

```matlab
A = categorical({'red','blue'}); B = renamecats(A, 'red', 'rouge'); categories(B)
```
Renommer toutes les categories.

```matlab
A = categorical({'red','blue'}); B = renamecats(A, {'bleu','rouge'}); categories(B)
```


## 🔗 Voir aussi

[categories](../categorical/categories.md), [reordercats](../categorical/reordercats.md), [mergecats](../categorical/mergecats.md), [setcats](../categorical/setcats.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
