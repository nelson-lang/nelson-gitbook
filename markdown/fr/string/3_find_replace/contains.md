# contains

Vérifie si une chaîne contient un motif.

## 📝 Syntaxe

- tf = contains(str, pattern)
- tf = contains(str, pattern,'IgnoreCase', true)
- tf = contains(str, pattern,'IgnoreCase', false)

## 📥 Argument d'entrée

- str - une chaîne, un tableau de chaînes, une cellule de chaînes ou un tableau catégoriel.
- pattern - une chaîne à rechercher.

## 📤 Argument de sortie

- tf - une matrice de booléens.

## 📄 Description


<b>contains</b> renvoie <b>true</b> si <b>str</b> contient<b>pattern</b>. 

Si <b>str</b> est un tableau catégoriel, <b>contains</b> teste le nom de catégorie de chaque élément et renvoie un tableau logique de même taille. Les éléments non définis renvoient <b>false</b>. <b>pattern</b> ne peut pas être catégoriel.

## 💡 Exemples



```matlab

str = 'To make a mountain out of a molehill';
k = contains (str, 'hill')
k = contains (str, 'molehill')
k = contains (str, 'Hill', 'IgnoreCase', true)

A = {'Nel', 'son'; 'Nelson', 'Modules'}
k = contains(A, 'son')

A = ["Nel", "son"; "Nelson", "Modules"]
k = contains(A, 'son')


```
Recherche de motif sur les noms de catégorie d'un tableau catégoriel.

```matlab
C = categorical({'winter storm', 'fire', 'Thunder Storm', ''});
tf = contains(C, "storm", 'IgnoreCase', true)
```


## 🔗 Voir aussi

[startsWith](../../string/3_find_replace/startsWith.md), [endsWith](../../string/3_find_replace/endsWith.md), [categorical](../../categorical/categorical.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | tableau catégoriel accepté comme entrée str. |

<!--
## 👤 Auteur

Allan CORNET
-->
