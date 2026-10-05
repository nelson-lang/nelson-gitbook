#import "../nelson_help.typ": *

= issiso <control_system:1_dynamic_system_models.issiso>

Vérifie si le modèle dynamique est mono-entrée mono-sortie.

== Syntaxe

- #raw("res = issiso(sys)");

== Argument d'entrée

/ sys: un modèle lti.

== Argument de sortie

/ res: un logique : vrai si le modèle dynamique est mono-entrée et mono-sortie.

== Description

Vérifie si le modèle dynamique est mono-entrée et mono-sortie.


== Exemple

``````matlab
A = [-15,-20; 10, 0];
B = [5; 0];
C = [0, 1];
D = 0;
sys = ss(A, B, C, D);
issiso(sys)

A = [1 2; 3 4];
B = [1 0; 0 1];
C = [1 1; 1 1];
D = [0 0; 0 0];
sys = ss(A, B, C, D);
issiso(sys)
``````


== Voir aussi

#nlink(<control_system:1_dynamic_system_models.isdt>)[isdt];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
