#import "nelson_help.typ": *

= mat2cell <data_structures:mat2cell>

Decoupe un tableau en tableau de cellules.

== Syntaxe

- #raw("C = mat2cell(A, rowSizes)");
- #raw("C = mat2cell(A, rowSizes, colSizes, ...)");

== Argument d'entrée

/ A: Tableau d'entree.
/ rowSizes: Tailles de blocs pour la premiere dimension.

== Argument de sortie

/ C: Tableau de cellules contenant les blocs de A.

== Description

#strong[mat2cell]; decoupe #strong[A]; en cellules dont les tailles sont donnees pour chaque dimension.


== Exemple

``````matlab
C = mat2cell(reshape(1:12, [3 4]), [1 2], [3 1])
``````


== Voir aussi

#nlink(<data_structures:num2cell>)[num2cell];, #nlink(<data_structures:cell2mat>)[cell2mat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
