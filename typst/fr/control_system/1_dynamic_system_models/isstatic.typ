#import "../nelson_help.typ": *

= isstatic <control_system:1_dynamic_system_models.isstatic>

Vérifie si le modèle est statique ou dynamique.

== Syntaxe

- #raw("res = isstatic(sys)");

== Argument d'entrée

/ sys: un modèle lti.

== Argument de sortie

/ res: un logique : vrai si le modèle est statique.

== Description

Vérifie si le modèle est statique.


== Exemple

``````matlab
sys = tf(magic(3));
isstatic(sys)
``````


== Voir aussi

#nlink(<control_system:1_dynamic_system_models.isct>)[isct];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
