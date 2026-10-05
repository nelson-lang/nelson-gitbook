#import "nelson_help.typ": *

= movprod <data_analysis:movprod>

Produit mobile.

== Syntaxe

- #raw("R = movprod(A, window)");
- #raw("R = movprod(A, window, d)");

== Argument d'entrée

/ A: input array.
/ window: positive scalar window length.
/ d: dimension to operate along: positive integer scalar.

== Argument de sortie

/ R: Moving product.

== Description

#strong[movprod]; calcule les produits sur une fenetre mobile centree.


== Exemple

``````matlab
A = [1 2 8 4 5];
R = movprod(A, 3)
``````


== Voir aussi

#nlink(<data_analysis:prod>)[prod];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
