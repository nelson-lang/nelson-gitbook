#import "../nelson_help.typ": *

= dcgain <control_system:3_linear_analysis.dcgain>

Gain en basse fréquence (DC) du système LTI.

== Syntaxe

- #raw("k = dcgain(sys)");

== Argument d'entrée

/ sys: un modèle LTI.

== Argument de sortie

/ k: Gain DC.

== Description

#strong[k \= dcgain(sys)]; calcule le gain DC #strong[k]; du modèle LTI sys.


== Exemple

``````matlab
A = [1 2; 3 4];
B = [1 0; 0 1];
C = [1 1; 1 1];
D = [0 0; 0 0];
sys = ss(A, B, C, D);
K = dcgain(sys)
``````


== Voir aussi

#nlink(<control_system:1_dynamic_system_models.tf>)[tf];, #nlink(<control_system:1_dynamic_system_models.ss>)[ss];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
