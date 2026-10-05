# count

Calcule le nombre d'occurrences d'un motif.

## 📝 Syntaxe

- nbocc = count(str, pattern)
- nbocc = count(str, pattern,'IgnoreCase', true)
- nbocc = count(str, pattern,'IgnoreCase', false)

## 📥 Argument d'entrée

- str - une chaîne, un tableau de chaînes ou une cellule de chaînes.
- pattern - une chaîne, un tableau de chaînes ou une cellule de chaînes à rechercher.

## 📤 Argument de sortie

- nbocc - une matrice d'entiers.

## 📄 Description


<b>count</b> calcule le nombre d'occurrences d'un motif.

## 💡 Exemple



```matlab

str = 'To make a mountain out of a molehill';
k = count(str, 'hill')
k = count(str, 'molehill')
k = count(str, 'Hill', 'IgnoreCase', true)

A = {'Nel', 'son'; 'Nelson', 'Modules'}
k = count(A, 'son')

A = ["Nel", "son"; "Nelson", "Modules"]
k = count(A, 'son')


```


## 🔗 Voir aussi

[startsWith](../../string/3_find_replace/startsWith.md), [endsWith](../../string/3_find_replace/endsWith.md), [contains](../../string/3_find_replace/contains.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
