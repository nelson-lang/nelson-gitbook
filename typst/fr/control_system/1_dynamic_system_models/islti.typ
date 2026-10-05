#import "../nelson_help.typ": *

= islti <control_system:1_dynamic_system_models.islti>

Vérifie si la variable est un modèle linéaire de type tf, ss ou zpk.

== Syntaxe

- #raw("res = islti(sys)");

== Argument d'entrée

/ A: variable.

== Argument de sortie

/ res: un booléen : vrai s'il s'agit d'un modèle linéaire.

== Description

Vérifie si la variable est un modèle linéaire (tf, ss ou zpk).


== Exemple

``````matlab
A = [-15,-20; 10, 0];
B = [5; 0];
C = [0, 1];
D = 0;
sys = ss(A, B, C, D);
islti(sys)
islti(A)
``````


== Voir aussi

#nlink(<types:isa>)[isa];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
