#import "../nelson_help.typ": *

= atan2 <nflow_blocks:math.atan2>

Arctangente quatre quadrants des deux entrées.

== Syntaxe

- #raw("Block type: atan2");

== Argument d'entrée

/ input ports: 2 input port(s) declared.

== Argument de sortie

/ output ports: 1 output port(s) declared.

== Description

Arctangente quatre quadrants des deux entrées.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Blocs math], 
  [Type], [#raw("atan2");], 
  [Label], [Atan2], 
)
 #strong[Description];

 Calcule #raw("atan2(y, x)"); élément par élément, avec #raw("y"); sur le port d’entrée 1 et #raw("x"); sur le port d’entrée 2.

 Le résultat est l’angle en radians dans l’intervalle (-pi, pi\]. Les signaux vectoriels sont traités élément par élément avec expansion scalaire.

 La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc.

 #strong[Sources d’implémentation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/atan2.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:math.abs>)[abs];, #nlink(<nflow_blocks:math.divide>)[divide];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
