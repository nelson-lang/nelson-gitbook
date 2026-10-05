#import "../nelson_help.typ": *

= augstate <control_system:2_model_conversion_interconnection.augstate>

Ajoute le vecteur d'état au vecteur de sortie.

== Syntaxe

- #raw("sysa = augstate(sys)");
- #raw("[Aa, Ba, Ca, Da] = augstate(A, B, C, D)");

== Argument d'entrée

/ sys: Modèle LTI.

== Argument de sortie

/ sysa: Modèle d'espace d'état avec états ajoutés aux sorties.

== Description

La fonction #strong[sysa \= augstate(sys)]; ajoute le vecteur d'état aux sorties d'un modèle d'espace d'état.


== Exemple

``````matlab
sys = ss(10, 10, 20, 0);
sysa = augstate(sys)
``````


== Voir aussi

#nlink(<control_system:2_model_conversion_interconnection.feedback>)[feedback];, #nlink(<control_system:2_model_conversion_interconnection.series>)[series];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
