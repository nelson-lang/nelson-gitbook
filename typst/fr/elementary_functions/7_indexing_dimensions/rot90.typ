#import "../nelson_help.typ": *

= rot90 <elementary_functions:7_indexing_dimensions.rot90>

Fait pivoter un tableau de 90 degrés.

== Syntaxe

- #raw("B = rot90(A)");
- #raw("B = rot90(A, k)");

== Argument d'entrée

/ A: un tableau : numérique, logique, caractère, chaîne, cellule, structure ou creux.
/ k: une valeur scalaire entière : constante de rotation.

== Argument de sortie

/ B: tableau pivoté.

== Description

#strong[B \= rot90(A, k)]; fait pivoter le tableau #strong[A]; dans le sens antihoraire de #strong[k \* 90]; degrés, où #strong[k]; est une valeur scalaire entière. Les valeurs négatives appliquent une rotation horaire.

 Le résultat conserve la classe en entrée et le stockage creux lorsque cela s'applique.

 Utilisez la fonction#strong[flip]; pour retourner un tableau selon n'importe quelle dimension.


== Exemple

``````matlab
x = eye(3, 2);
y = rot90(x, 0)
y = rot90(x, 1)
y = rot90(x, 2)
y = rot90(x, 3)
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.flipud>)[flipud];, #nlink(<elementary_functions:7_indexing_dimensions.fliplr>)[fliplr];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
