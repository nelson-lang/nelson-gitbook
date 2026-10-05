#import "../nelson_help.typ": *

= sign <nflow_blocks:math.sign>

Signe de l’entrée (-1, 0 ou +1).

== Syntaxe

- #raw("Block type: sign");

== Argument d'entrée

/ input ports: 1 input port(s) declared.

== Argument de sortie

/ output ports: 1 output port(s) declared.

== Description

Signe de l’entrée (-1, 0 ou +1).

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Blocs math], 
  [Type], [#raw("sign");], 
  [Label], [Sign], 
)
 #strong[Description];

 Renvoie #raw("-1"); lorsque l’entrée est négative, #raw("0"); lorsqu’elle est nulle et #raw("+1"); lorsqu’elle est positive, élément par élément avec expansion scalaire pour les signaux vectoriels.

 La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc.

 #strong[Sources d’implémentation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/sign.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:math.abs>)[abs];, #nlink(<nflow_blocks:math.roundingFunction>)[roundingFunction];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
