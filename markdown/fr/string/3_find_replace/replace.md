# replace

Remplace des sous-chaînes dans une chaîne.

## 📝 Syntaxe

- res = replace(str, old, new)

## 📥 Argument d'entrée

- str - une chaîne, un tableau de chaînes ou une cellule de chaînes.
- old - une chaîne, un tableau de chaînes ou une cellule de chaînes à rechercher.
- new - une chaîne, un tableau de chaînes ou une cellule de chaînes.

## 📤 Argument de sortie

- res - une chaîne, un tableau de chaînes ou une cellule de chaînes.

## 📄 Description


<b>replace</b> remplace des sous-chaînes dans une chaîne. 

<b>replace</b> et <b>strrep</b> remplacent des chaînes, mais<b>replace</b> est recommandé.

## 💡 Exemple



```matlab
r = replace('This is a string.', 'is', 'is not')
r = replace({'cccc','ccbbcca'},{'cc','bb'},{'cc'})
```


## 🔗 Voir aussi

[strrep](../../string/3_find_replace/strrep.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
