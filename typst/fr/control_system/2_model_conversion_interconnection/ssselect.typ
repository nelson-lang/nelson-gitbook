#import "../nelson_help.typ": *

= ssselect <control_system:2_model_conversion_interconnection.ssselect>

Extraire un sous-système d'un système plus grand.

== Syntaxe

- #raw("sysOut = ssselect(sysIn, INPUTS, OUTPUTS)");
- #raw("sysOut = ssselect(sysIn, INPUTS, OUTPUTS, STATES)");

== Argument d'entrée

/ sysIn: modèle d'état-espace
/ INPUTS: index dans les entrées du système
/ OUTPUTS: index dans les sorties du système
/ STATES: états spécifiés

== Argument de sortie

/ sysOut: modèle d'état-espace : sous-système d'un système plus grand.

== Description

#strong[ssselect]; extrait un sous-système à partir d'un système plus grand.


== Exemple

``````matlab
A = [33,2,5; 23,200,2; 9,2,45];
B = [4,5; 12,5; 82,1];
C = [34,56,2; 6,2,112];
D = [2,0; 0,19];
sys1 = ss(A, B, C, D)
inputs = 1;
outputs = 1;

R = ssselect(sys1, inputs, outputs)

``````


== Voir aussi

#nlink(<control_system:2_model_conversion_interconnection.ssdelete>)[ssdelete];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
