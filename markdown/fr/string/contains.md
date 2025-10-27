# contains

Vérifie si une chaîne contient un motif.

## 📝 Syntaxe

- tf = contains(str, pattern)
- tf = contains(str, pattern,'IgnoreCase', true)
- tf = contains(str, pattern,'IgnoreCase', false)

## 📥 Argument d'entrée

- str - une chaîne, un tableau de chaînes ou une cellule de chaînes.
- pattern - une chaîne à rechercher.

## 📤 Argument de sortie

- tf - une matrice de booléens.

## 📄 Description

<b>contains</b> renvoie <b>true</b> si <b>str</b> contient <b>pattern</b>.

## 💡 Exemple

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

## 🔗 Voir aussi

[startsWith](../string/startsWith.md), [endsWith](../string/endsWith.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
