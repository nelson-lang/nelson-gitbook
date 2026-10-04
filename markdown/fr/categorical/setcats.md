# setcats

Definir la liste des categories d'un tableau categoriel.

## 📝 Syntaxe

- B = setcats(A, newCategories)

## 📥 Argument d'entrée

- A - Tableau categoriel d'entree.
- newCategories - Liste complete de remplacement des categories.

## 📤 Argument de sortie

- B - Tableau categoriel utilisant exactement les categories listees dans <b>newCategories</b>.

## 📄 Description

<b>setcats</b> remplace la liste des categories d'un tableau categoriel.

Les elements dont l'ancienne categorie n'est pas presente dans <b>newCategories</b> deviennent non definis. Les nouvelles categories absentes auparavant sont ajoutees comme categories inutilisees.

## 💡 Exemples

Conserver seulement certaines categories.

```matlab
A = categorical({'red','blue','green'}); B = setcats(A, {'red','blue'}); isundefined(B)
```

Ajouter une categorie inutilisee avec une liste complete.

```matlab
A = categorical({'red','blue'}); B = setcats(A, {'red','blue','green'}); categories(B)
```

## 🔗 Voir aussi

[addcats](../categorical/addcats.md), [removecats](../categorical/removecats.md), [isundefined](../categorical/isundefined.md), [categories](../categorical/categories.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
