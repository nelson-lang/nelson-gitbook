# nelson.lang.makeValidName

Convertit du texte en noms de variables Nelson valides.

## 📝 Syntaxe

- N = nelson.lang.makeValidName(S)
- N = nelson.lang.makeValidName(S, 'ReplacementStyle', style)
- N = nelson.lang.makeValidName(S, 'Prefix', prefix)
- [N, modified] = nelson.lang.makeValidName(...)

## 📥 Argument d'entrée

- S - tableau de chaînes, vecteur de caractères ou cellule de vecteurs de caractères.
- style - style de remplacement : 'underscore', 'delete' ou 'hex'.
- prefix - nom de variable valide utilisé quand un nom généré ne commence pas par une lettre.

## 📤 Argument de sortie

- N - noms valides, renvoyés avec le même type de conteneur texte que S.
- modified - tableau logique indiquant les éléments modifiés.

## 📄 Description


<b>nelson.lang.makeValidName</b> supprime les espaces, remplace les caractères non pris en charge, ajoute un préfixe si nécessaire et tronque les noms à <b>namelengthmax</b>.

## 💡 Exemple



```matlab
names = nelson.lang.makeValidName({'a b', 'a-b', '1a'})
[names, modified] = nelson.lang.makeValidName("a#b", 'ReplacementStyle', 'hex')
```


## 🔗 Voir aussi

[isvarname](../types/isvarname.md), [nelson.lang.makeUniqueStrings](../types/nelson.lang.makeUniqueStrings.md), [namelengthmax](../core/namelengthmax.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
