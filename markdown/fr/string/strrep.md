# strrep

Remplace des sous-chaînes dans une chaîne.

## 📝 Syntaxe

- res = strrep(str, old, new)

## 📥 Argument d'entrée

- str - une chaîne, un tableau de chaînes ou une cellule de chaînes.
- old - une chaîne, un tableau de chaînes ou une cellule de chaînes à rechercher.
- new - une chaîne, un tableau de chaînes ou une cellule de chaînes de remplacement.

## 📤 Argument de sortie

- res - une chaîne, un tableau de chaînes ou une cellule de chaînes.

## 📄 Description

<b>replace</b> remplace des sous-chaînes dans une chaîne.

<b>replace</b> et <b>strrep</b> remplacent des sous-chaînes, mais <b>replace</b> est recommandé.

## 💡 Exemple

```matlab
r = strrep('This is a string.', 'is', 'is not')
r = strrep({'cccc','ccbbcca'},{'cc','bb'},{'cc'})
r = strrep("This is a string.", "is", 'is not')
```

## 🔗 Voir aussi

[replace](../string/replace.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
