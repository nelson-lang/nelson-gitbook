#import "nelson_help.typ": *

= nelson.lang.makeUniqueStrings <types:nelson.lang.makeUniqueStrings>

Rend des chaînes uniques en ajoutant des suffixes numériques.

== Syntaxe

- #raw("U = nelson.lang.makeUniqueStrings(S)");
- #raw("U = nelson.lang.makeUniqueStrings(S, excludedStrings)");
- #raw("U = nelson.lang.makeUniqueStrings(S, whichStringsIdx)");
- #raw("U = nelson.lang.makeUniqueStrings(S, excludedStrings, maxStringLength)");
- #raw("U = nelson.lang.makeUniqueStrings(S, whichStringsIdx, maxStringLength)");
- #raw("[U, modified] = nelson.lang.makeUniqueStrings(...)");

== Argument d'entrée

/ S: tableau de chaînes, vecteur de caractères ou cellule de vecteurs de caractères.
/ excludedStrings: chaînes que les valeurs générées ne doivent pas dupliquer.
/ whichStringsIdx: indices numériques ou masque logique sélectionnant les éléments à rendre uniques. Cet argument est utilisé à la place de excludedStrings.
/ maxStringLength: scalaire entier positif définissant la longueur maximale de sortie.

== Argument de sortie

/ U: chaînes uniques, renvoyées avec le même type de conteneur texte que S.
/ modified: tableau logique indiquant les éléments modifiés.

== Description

#strong[nelson.lang.makeUniqueStrings]; ajoute des suffixes comme #strong[\_1]; et #strong[\_2]; aux éléments sélectionnés jusqu'à ce qu'ils soient uniques.


== Exemple

``````matlab
nelson.lang.makeUniqueStrings({'a', 'a', 'b', 'a'})
nelson.lang.makeUniqueStrings({'a', 'b'}, {'a', 'b'})
``````


== Voir aussi

#nlink(<types:nelson.lang.makeValidName>)[nelson.lang.makeValidName];, #nlink(<core:namelengthmax>)[namelengthmax];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
