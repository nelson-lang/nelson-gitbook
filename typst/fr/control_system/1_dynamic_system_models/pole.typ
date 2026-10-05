#import "../nelson_help.typ": *

= pole <control_system:1_dynamic_system_models.pole>

Pôles d'un système dynamique.

== Syntaxe

- #raw("P = pole(sys)");

== Argument d'entrée

/ sys: un modèle LTI.

== Argument de sortie

/ P: Pôles du système dynamique.

== Description

#strong[P \= pole(sys)]; renvoie les pôles de #strong[sys];.


== Exemple

``````matlab
A = [-15, -20; 10, 0];
B = [5; 0];
C = [0, 10];
D = 0;
sys = ss(A, B, C, D);
P = pole(sys)
``````


== Voir aussi

#nlink(<control_system:1_dynamic_system_models.zero>)[zero];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
