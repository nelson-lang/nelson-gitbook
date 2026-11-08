#import "../nelson_help.typ": *

= zpk2tf <control_system:2_model_conversion_interconnection.zpk2tf>

Convertit un modèle zéros-pôles-gain en fonction de transfert.

== Syntaxe

- #raw("sys = zpk2tf(zpkObj)");

== Argument d'entrée

/ zpkObj: un modèle zpk.

== Argument de sortie

/ sys: le modèle tf équivalent.

== Description

#strong[sys \= zpk2tf(zpkObj)]; convertit un modèle zéros-pôles-gain en un modèle de fonction de transfert équivalent.

 Le temps d'échantillonnage, la variable et les métadonnées du modèle d'entrée sont conservés dans le résultat.


== Exemple

``````matlab
z = zpk([], [-1 -2], 3);
sys = zpk2tf(z)

``````


== Voir aussi

#nlink(<control_system:1_dynamic_system_models.zpk>)[zpk];, #nlink(<control_system:1_dynamic_system_models.tf>)[tf];, #nlink(<control_system:2_model_conversion_interconnection.ss2tf>)[ss2tf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
