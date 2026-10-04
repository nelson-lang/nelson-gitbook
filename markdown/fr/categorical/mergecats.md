# mergecats

Fusionner des categories dans un tableau categoriel.

## 📝 Syntaxe

- B = mergecats(A, oldCategories)
- B = mergecats(A, oldCategories, newCategory)

## 📥 Argument d'entrée

- A - Tableau categoriel d'entree.
- oldCategories - Categories dont les elements sont fusionnes.
- newCategory - Nom de la categorie fusionnee. Si omis, la premiere categorie de <b>oldCategories</b> est conservee.

## 📤 Argument de sortie

- B - Tableau categoriel avec les codes de categories fusionnes.

## 📄 Description

<b>mergecats</b> remplace plusieurs categories par une seule categorie et reaffecte tous les elements correspondants.

Les categories non listees dans <b>oldCategories</b> conservent leurs valeurs et leur ordre relatif.

## 💡 Exemple

Fusionner plusieurs categories en une categorie.

```matlab
A = categorical({'red','blue','green'}); B = mergecats(A, {'blue','green'}, 'other'); categories(B)
```

## 🔗 Voir aussi

[addcats](../categorical/addcats.md), [removecats](../categorical/removecats.md), [renamecats](../categorical/renamecats.md), [setcats](../categorical/setcats.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
