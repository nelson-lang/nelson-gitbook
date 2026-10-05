#import "../nelson_help.typ": *

= zero <control_system:1_dynamic_system_models.zero>

Zéros et gain d'un système SISO.

== Syntaxe

- #raw("Z = zero(sys)");
- #raw("[Z, gain] = zero(sys)");

== Argument d'entrée

/ sys: un modèle LTI.

== Argument de sortie

/ Z: Zéros du système dynamique.
/ gain: Zero-pole-gain du système dynamique.

== Description

#strong[\[Z, gain\] \= zero(sys)]; renvoie les zéros et le gain du système SISO fourni.


== Exemple

``````matlab
sys = tf([4.2,0.25,-0.004],[1,9.6,17]);
[Z, gain] = zero(sys)
``````


== Voir aussi

#nlink(<control_system:1_dynamic_system_models.pole>)[pole];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
