# isequal

Determine si des dictionnaires sont egaux.

## 📝 Syntaxe

- tf = isequal(d1, d2)
- tf = isequal(d1, d2, ..., dN)

## 📥 Argument d'entrée

- d1, d2, ..., dN - objets dictionnaire a comparer.

## 📤 Argument de sortie

- tf - scalaire logique : vrai lorsque tous les dictionnaires contiennent les memes associations cle-valeur.

## 📄 Description


<b>tf = isequal(d1, d2)</b> retourne vrai lorsque les deux dictionnaires ont la meme configuration et les memes associations cle-valeur. 

L'egalite des dictionnaires ne depend pas de l'ordre d'insertion. Si une cle apparait plusieurs fois pendant la construction, seule la derniere valeur conservee par le dictionnaire est comparee.

## 💡 Exemple



```matlab
d1 = dictionary([1 2], ["one", "two"]);
d2 = dictionary([2 1], ["two", "one"]);
tf = isequal(d1, d2)
```


## 🔗 Voir aussi

[dictionary](../dictionary/dictionary.md), [entries](../dictionary/entries.md), [isequal](../elementary_functions/7_indexing_dimensions/isequal.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | egalite classdef de dictionary |

<!--
## 👤 Auteur

Allan CORNET
-->
