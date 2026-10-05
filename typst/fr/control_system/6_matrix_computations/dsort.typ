#import "../nelson_help.typ": *

= dsort <control_system:6_matrix_computations.dsort>

Trie les pôles en temps discret par magnitude.

== Syntaxe

- #raw("s = dsort(p)");
- #raw("[s, ndx] = dsort(p)");

== Argument d'entrée

/ p: p : un vecteur

== Argument de sortie

/ s: vecteur trié par magnitude.
/ ndx: indices du tri.

== Description

#strong[dsort]; organise les pôles en temps discret dans le vecteur #strong[p]; dans un ordre décroissant basé sur leur magnitude, les pôles instables prenant la priorité au début de la liste triée.


== Exemple

``````matlab
p = [-2.410 + 5.573i;
-2.410 - 5.573i;
1.503;
-0.972;
-2.590];
[s, ndx] = dsort(p)
  
``````


== Voir aussi

#nlink(<control_system:6_matrix_computations.esort>)[esort];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
