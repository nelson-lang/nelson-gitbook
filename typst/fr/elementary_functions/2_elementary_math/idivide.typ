#import "../nelson_help.typ": *

= idivide <elementary_functions:2_elementary_math.idivide>

Division entiere avec option d'arrondi.

== Syntaxe

- #raw("C = idivide(A, B)");
- #raw("C = idivide(A, B, opt)");

== Argument d'entrée

/ A, B: tableaux entiers (au moins un doit appartenir a une classe entiere).
/ opt: regle d'arrondi : 'fix' (defaut), 'round', 'floor' ou 'ceil'.

== Argument de sortie

/ C: resultat de la division entiere.

== Description

#strong[idivide(A, B)]; divise #strong[A]; par #strong[B]; et arrondit le resultat vers zero (#strong['fix'];), en conservant la classe entiere des entrees.

 Utilisez #strong[opt]; pour choisir une autre regle d'arrondi : #strong['round'];, #strong['floor']; ou #strong['ceil'];.


== Exemple

``````matlab
idivide(int32(7), int32(2))
idivide(int32(7), int32(2), 'ceil')
``````


== Voir aussi

#nlink(<elementary_functions:2_elementary_math.mod>)[mod];, #nlink(<elementary_functions:2_elementary_math.rem>)[rem];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
