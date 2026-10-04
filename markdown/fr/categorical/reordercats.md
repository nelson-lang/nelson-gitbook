# reordercats

Reordonner les categories d'un tableau categoriel.

## 📝 Syntaxe

- B = reordercats(A)
- B = reordercats(A, newOrder)

## 📥 Argument d'entrée

- A - Tableau categoriel d'entree.
- newOrder - Nouvel ordre des categories, specifie par noms ou par positions numeriques.

## 📤 Argument de sortie

- B - Tableau categoriel avec les memes valeurs affichees que <b>A</b> et une liste de categories reordonnee.

## 📄 Description

<b>reordercats</b> modifie l'ordre des categories. Si <b>newOrder</b> est omis, les categories sont triees par nom.

Pour les tableaux ordinaux, le nouvel ordre modifie les comparaisons et l'ordre de tri.

## 💡 Exemples

Specifier un nouvel ordre.

```matlab
A = categorical({'red','blue'}, {'red','blue'}); B = reordercats(A, {'blue','red'}); categories(B)
```

Trier les categories par nom.

```matlab
A = categorical({'plane','car','train'}); B = reordercats(A); categories(B)
```

## 🔗 Voir aussi

[categories](../categorical/categories.md), [renamecats](../categorical/renamecats.md), [isordinal](../categorical/isordinal.md), [sort](../data_analysis/sort.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
