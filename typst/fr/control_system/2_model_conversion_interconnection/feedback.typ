#import "../nelson_help.typ": *

= feedback <control_system:2_model_conversion_interconnection.feedback>

Connexion en boucle fermée de plusieurs modèles.

== Syntaxe

- #raw("sys = feedback(sys1, sys2)");
- #raw("sys = feedback(sys1, sys2, sign)");

== Argument d'entrée

/ sys1, sys2: Modèles LTI : Systèmes à connecter en boucle de rétroaction.
/ sign: Type de rétroaction : -1 (par défaut) ou +1.

== Argument de sortie

/ sys: Système en boucle fermée.

== Description

#strong[sys \= feedback(sys1, sys2)]; génère un objet modèle,#strong[sys];, représentant l'interconnexion en rétroaction négative des objets modèle #strong[sys1]; et #strong[sys2];.


== Exemple

``````matlab
G = tf([2 5 1], [1 2 3]);
C = tf([5, 10], [1, 10]);
sys = feedback(G, C, +1)

``````


== Voir aussi

#nlink(<control_system:6_matrix_computations.cloop>)[cloop];, #nlink(<control_system:2_model_conversion_interconnection.append>)[append];, #nlink(<control_system:2_model_conversion_interconnection.ssselect>)[ssselect];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
