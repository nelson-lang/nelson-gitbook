# startsWith

Vérifie si une chaîne commence par un motif.

## 📝 Syntaxe

- tf = startsWith(str, pattern)
- tf = startsWith(str, pattern,'IgnoreCase', true)
- tf = startsWith(str, pattern,'IgnoreCase', false)

## 📥 Argument d'entrée

- str - une chaîne, un tableau de chaînes, une cellule de chaînes ou un tableau catégoriel.
- pattern - une chaîne à rechercher.

## 📤 Argument de sortie

- tf - une matrice de booléens.

## 📄 Description


<b>startsWith</b> renvoie <b>true</b> si <b>str</b> commence par<b>pattern</b>. 

Si <b>str</b> est un tableau catégoriel, <b>startsWith</b> teste le nom de catégorie de chaque élément et renvoie un tableau logique de même taille. Les éléments non définis renvoient <b>false</b>. <b>pattern</b> ne peut pas être catégoriel.

## 💡 Exemples



```matlab

str = 'To make a mountain out of a molehill';
k = startsWith (str, 'in')
k = startsWith (str, 'to')
k = startsWith (str, 'to', 'IgnoreCase', true)

A = {'Nel', 'son'; 'Nelson', 'Modules'}
k = startsWith(A, 'Nel')

A = ["Nel", "son"; "Nelson", "Modules"];
k = startsWith(A, "Nel")


```
Recherche de motif sur les noms de catégorie d'un tableau catégoriel.

```matlab
C = categorical({'winter storm', 'fire', 'Thunder Storm', ''});
tf = startsWith(C, "thunder", 'IgnoreCase', true)
```


## 🔗 Voir aussi

[endsWith](../../string/3_find_replace/endsWith.md), [contains](../../string/3_find_replace/contains.md), [categorical](../../categorical/categorical.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | tableau catégoriel accepté comme entrée str. |

<!--
## 👤 Auteur

Allan CORNET
-->
