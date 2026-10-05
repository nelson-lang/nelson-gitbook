#import "../nelson_help.typ": *

= series <control_system:2_model_conversion_interconnection.series>

Connexion en série de deux modèles.

== Syntaxe

- #raw("sys = series(sys1, sys2)");
- #raw("sys = series(sys1, sys2, outputs1, inputs2)");

== Argument d'entrée

/ sys1, sys2: Modèles LTI.
/ outputs1: vecteurs d'index
/ inputs2: vecteurs d'index

== Argument de sortie

/ sys: Modèle LTI.

== Description

Connecte deux systèmes en série. Les systèmes doivent être tous deux continus ou discrets et avoir le même temps d'échantillonnage.

 Les gains statiques sont considérés comme neutres et peuvent être définis par des matrices classiques.


== Exemple

``````matlab
[A, B, C, D] = ord2(1, 3);
sys1 = ss(A, B, C, D);
[A, B, C, D] = ord2(3, 6);
sys2 = ss(A, B, C, D)
outputs1 = 1;
inputs2 = 1;
sys = series(sys1, sys2, outputs1, inputs2)

``````


== Voir aussi

#nlink(<control_system:2_model_conversion_interconnection.feedback>)[feedback];, #nlink(<control_system:2_model_conversion_interconnection.append>)[append];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
