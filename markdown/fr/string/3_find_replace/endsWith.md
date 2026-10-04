# endsWith

vérifie si une chaîne se termine par un motif.

## 📝 Syntaxe

- tf = endsWith(str, pattern)
- tf = endsWith(str, pattern,'IgnoreCase', true)
- tf = endsWith(str, pattern,'IgnoreCase', false)

## 📥 Argument d'entrée

- str - une chaîne, un tableau de chaînes, une cellule de chaînes ou un tableau catégoriel.
- pattern - une chaîne à rechercher.

## 📤 Argument de sortie

- tf - une matrice de booléens.

## 📄 Description

<b>endsWith</b> renvoie <b>vrai</b> si <b>str</b> se termine par<b>pattern</b>.

Si <b>str</b> est un tableau catégoriel, <b>endsWith</b> teste le nom de catégorie de chaque élément et renvoie un tableau logique de même taille. Les éléments non définis renvoient <b>false</b>. <b>pattern</b> ne peut pas être catégoriel.

## 💡 Exemples

```matlab

str = 'To make a mountain out of a molehill';
k = endsWith (str, 'hill')
k = endsWith (str, 'molehill')
k = endsWith (str, 'Hill', 'IgnoreCase', true)

A = {'Nel', 'son'; 'Nelson', 'Modules'}
k = endsWith(A, 'son')

A = ["Nel", "son"; "Nelson", "Modules"]
k = endsWith(A, "son")


```

Recherche de motif sur les noms de catégorie d'un tableau catégoriel.

```matlab
C = categorical({'winter storm', 'fire', 'Thunder Storm', ''});
tf = endsWith(C, "storm", 'IgnoreCase', true)
```

## 🔗 Voir aussi

[startsWith](../../string/startsWith.md), [contains](../../string/contains.md), [categorical](../../categorical/categorical.md).

## 🕔 Historique

| Version | 📄 Description                               |
| ------- | -------------------------------------------- |
| 1.0.0   | version initiale                             |
| 2.0.0   | tableau catégoriel accepté comme entrée str. |

<!--
## 👤 Auteur

Allan CORNET
-->
