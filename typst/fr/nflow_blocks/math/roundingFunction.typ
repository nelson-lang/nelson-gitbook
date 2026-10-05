#import "../nelson_help.typ": *

= roundingFunction <nflow_blocks:math.roundingFunction>

Arrondit l’entrée à une valeur entière.

== Syntaxe

- #raw("Block type: roundingFunction");

== Argument d'entrée

/ input ports: 1 input port(s) declared.

== Argument de sortie

/ output ports: 1 output port(s) declared.

== Description

Arrondit l’entrée à une valeur entière.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Blocs math], 
  [Type], [#raw("roundingFunction");], 
  [Label], [Rounding Function], 
)
 #strong[Description];

 Applique le mode d’arrondi sélectionné par le paramètre #raw("Operator");, élément par élément, avec expansion scalaire pour les signaux vectoriels.

 #strong[Operator];

 #raw("floor"); : arrondi vers moins l’infini.

 #raw("ceil"); : arrondi vers plus l’infini.

 #raw("round"); : arrondi à l’entier le plus proche, les valeurs à mi-chemin étant arrondies à l’opposé de zéro.

 #raw("fix"); : troncature vers zéro.

 La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc.

 #strong[Sources d’implémentation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/roundingFunction.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:math.sign>)[sign];, #nlink(<nflow_blocks:math.sqrt>)[sqrt];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
