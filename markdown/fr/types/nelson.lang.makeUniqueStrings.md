# nelson.lang.makeUniqueStrings

Rend des chaînes uniques en ajoutant des suffixes numériques.

## 📝 Syntaxe

- U = nelson.lang.makeUniqueStrings(S)
- U = nelson.lang.makeUniqueStrings(S, excludedStrings)
- U = nelson.lang.makeUniqueStrings(S, whichStringsIdx)
- U = nelson.lang.makeUniqueStrings(S, excludedStrings, maxStringLength)
- U = nelson.lang.makeUniqueStrings(S, whichStringsIdx, maxStringLength)
- [U, modified] = nelson.lang.makeUniqueStrings(...)

## 📥 Argument d'entrée

- S - tableau de chaînes, vecteur de caractères ou cellule de vecteurs de caractères.
- excludedStrings - chaînes que les valeurs générées ne doivent pas dupliquer.
- whichStringsIdx - indices numériques ou masque logique sélectionnant les éléments à rendre uniques. Cet argument est utilisé à la place de excludedStrings.
- maxStringLength - scalaire entier positif définissant la longueur maximale de sortie.

## 📤 Argument de sortie

- U - chaînes uniques, renvoyées avec le même type de conteneur texte que S.
- modified - tableau logique indiquant les éléments modifiés.

## 📄 Description

<b>nelson.lang.makeUniqueStrings</b> ajoute des suffixes comme <b>\_1</b> et <b>\_2</b> aux éléments sélectionnés jusqu'à ce qu'ils soient uniques.

## 💡 Exemple

```matlab
nelson.lang.makeUniqueStrings({'a', 'a', 'b', 'a'})
nelson.lang.makeUniqueStrings({'a', 'b'}, {'a', 'b'})
```

## 🔗 Voir aussi

[nelson.lang.makeValidName](../types/nelson.lang.makeValidName.md), [namelengthmax](../core/namelengthmax.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
