# categories

Lister les categories d'un tableau categoriel.

## 📝 Syntaxe

- names = categories(A)
- names = categories(A, 'OutputType', type)

## 📥 Argument d'entrée

- A - Tableau categoriel d'entree.
- type - Representation de sortie: <b>'char'</b>, <b>'string'</b> ou <b>'categorical'</b>.

## 📤 Argument de sortie

- names - Noms de categories dans l'ordre des categories.

## 📄 Description

<b>categories</b> retourne la liste des categories associee a un tableau categoriel.

Les elements non definis ne sont pas des categories. La sortie par defaut est un tableau de cellules de chaines de caracteres.

## 💡 Exemples

Retourner les noms de categories.

```matlab
A = categorical({'red','blue','red'}); names = categories(A)
```

Retourner les noms sous forme de strings.

```matlab
A = categorical({'small','large'}); names = categories(A, 'OutputType', 'string')
```

## 🔗 Voir aussi

[categorical](../categorical/categorical.md), [addcats](../categorical/addcats.md), [renamecats](../categorical/renamecats.md), [reordercats](../categorical/reordercats.md), [iscategory](../categorical/iscategory.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
