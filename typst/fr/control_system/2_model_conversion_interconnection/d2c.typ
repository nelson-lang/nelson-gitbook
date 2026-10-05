#import "../nelson_help.typ": *

= d2c <control_system:2_model_conversion_interconnection.d2c>

Convertit un modèle du temps discret au temps continu.

== Syntaxe

- #raw("sysc = d2c(sysd)");
- #raw("sysc = d2c(sysd, method)");
- #raw("sysc = d2c(sysd, 'prewarp', w0)");

== Argument d'entrée

/ sysd: Système dynamique en temps discret : modèle LTI.
/ method: Méthode de discrétisation : 'zoh', 'tustin', 'prewarp'
/ w0: fréquence de pré-distorsion.

== Argument de sortie

/ sysc: modèle en temps continu

== Description

La fonction #strong[sysc \= d2c(sysd)]; transforme un modèle de système dynamique en temps discret #strong[sysd]; en un modèle en temps continu, en utilisant un maintien d'ordre zéro sur les entrées.

 Par exemple, vous pouvez utiliser #strong[sysc \= d2c(sysd, method)]; pour définir explicitement la méthode de conversion.


== Exemple

``````matlab
A = [0.25, 0.5; 0, 0.1];
B = [1; 0];
C = [-1, 0];
sys = ss(A, B, C, 0, 0.2);
sysc = d2c(sys, 'zoh')

``````


== Voir aussi

#nlink(<control_system:2_model_conversion_interconnection.c2d>)[c2d];, #nlink(<control_system:1_dynamic_system_models.ss>)[ss];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
