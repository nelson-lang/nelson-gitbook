# endsWith

checks if string ends with pattern.

## 📝 Syntaxe

- tf = endsWith(str, pattern)
- tf = endsWith(str, pattern,'IgnoreCase', true)
- tf = endsWith(str, pattern,'IgnoreCase', false)

## 📥 Argument d'entrée

- str - une chaîne, un tableau de chaînes ou une cellule de chaînes.
- pattern - une chaîne à rechercher.

## 📤 Argument de sortie

- tf - une matrice de booléens.

## 📄 Description

<b>endsWith</b> renvoie <b>vrai</b> si <b>str</b> se termine par <b>pattern</b>.

## 💡 Exemple

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

## 🔗 Voir aussi

[startsWith](../string/startsWith.md), [contains](../string/contains.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
