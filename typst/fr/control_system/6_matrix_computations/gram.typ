#import "../nelson_help.typ": *

= gram <control_system:6_matrix_computations.gram>

Matrices de Gram d'un système.

== Syntaxe

- #raw("wc = gram(sys, 'o')");
- #raw("wc = gram(sys, 'c')");

== Argument d'entrée

/ sys: modèle d'état-espace.

== Argument de sortie

/ wc: matrice de Gram d'observabilité ou de contrôlabilité.

== Description

Calcule les matrices de Gram pour l'observabilité ou la contrôlabilité d'un système d'état.


== Exemple

``````matlab
sys = ss([-.1 -1;1 0], [1;0], [0 1], 0);
wc = gram(sys, 'c')
wc = gram(sys, 'o')

``````


== Voir aussi

#nlink(<control_system:6_matrix_computations.lyap>)[lyap];, #nlink(<control_system:6_matrix_computations.dlyap>)[dlyap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
