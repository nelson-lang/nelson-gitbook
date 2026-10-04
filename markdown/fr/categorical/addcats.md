# addcats

Ajouter des categories a un tableau categoriel.

## 📝 Syntaxe

- B = addcats(A, names)
- B = addcats(A, names, 'Before', anchor)
- B = addcats(A, names, 'After', anchor)

## 📥 Argument d'entrée

- A - Tableau categoriel d'entree.
- names - Nom ou liste de noms de categories a ajouter. Les noms deja presents sont ignores.
- anchor - Categorie existante utilisee comme point d'insertion avec <b>Before</b> ou <b>After</b>.

## 📤 Argument de sortie

- B - Tableau categoriel avec les memes valeurs que <b>A</b> et une liste de categories mise a jour.

## 📄 Description

<b>addcats</b> ajoute des categories sans modifier les elements stockes.

Pour un tableau categoriel ordinal, la position doit etre precisee car l'ordre des categories definit les comparaisons.

## 💡 Exemples

Ajouter une categorie a la fin.

```matlab
A = categorical({'red','blue'}); B = addcats(A, 'green'); categories(B)
```

Inserer une categorie avant une categorie existante.

```matlab
A = categorical({'low','high'}, {'low','high'}, 'Ordinal', true); B = addcats(A, 'mid', 'Before', 'high'); categories(B)
```

## 🔗 Voir aussi

[categorical](../categorical/categorical.md), [categories](../categorical/categories.md), [removecats](../categorical/removecats.md), [mergecats](../categorical/mergecats.md), [reordercats](../categorical/reordercats.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
