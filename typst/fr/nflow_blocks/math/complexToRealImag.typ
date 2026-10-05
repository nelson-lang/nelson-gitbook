#import "../nelson_help.typ": *

= complexToRealImag <nflow_blocks:math.complexToRealImag>

Sépare un signal complexe en sorties réelle et imaginaire.

== Syntaxe

- #raw("Block type: complexToRealImag");

== Argument d'entrée

/ input ports: 1 input port(s) declared.

== Argument de sortie

/ output ports: 2 output port(s) declared.

== Description

Sépare un signal complexe en sorties réelle et imaginaire.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Blocs math], 
  [Type], [#raw("complexToRealImag");], 
  [Label], [Complex to Re-Im], 
)
 #strong[Description];

 Le port de sortie 1 porte la partie réelle et le port de sortie 2 la partie imaginaire du signal d’entrée complexe.

 La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc.

 #strong[Sources d’implémentation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/complexOps.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:math.realImagToComplex>)[realImagToComplex];, #nlink(<nflow_blocks:math.complexToMagnitudeAngle>)[complexToMagnitudeAngle];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
