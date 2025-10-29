# strfind

Trouve une chaîne dans une autre.

## 📝 Syntaxe

- occ = strfind(str, pattern)
- occ = strfind(str, pattern,'ForceCellOutput', ouput)

## 📥 Argument d'entrée

- str - une chaîne ou une cellule de chaînes.
- pattern - une chaîne à rechercher.
- output - un booléen.

## 📤 Argument de sortie

- occ - une cellule ou une matrice de valeurs entières : positions des occurrences.

## 📄 Description

<b>strfind</b> trouve une chaîne dans une autre.

## 💡 Exemple

```matlab

str = 'To make a mountain out of a molehill';
k = strfind (str, 'in')
k= strfind(str, ' ')
k = strfind ({'abababada', 'beabebe', 'ab'}, 'aba')

A = {'Nel', 'son'; 'Toolboxes', 'Modules'}
k = strfind(A, 'o')

str = 'No pain no gain.';
k = strfind(str,'in','ForceCellOutput',true)
k = strfind(str,'in','ForceCellOutput',false)

```

## 🔗 Voir aussi

[strcmp](../string/strcmp.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
