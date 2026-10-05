#import "../nelson_help.typ": *

= magnitudeAngleToComplex <nflow_blocks:math.magnitudeAngleToComplex>

Construit un signal complexe à partir d’entrées module et angle.

== Syntaxe

- #raw("Block type: magnitudeAngleToComplex");

== Argument d'entrée

/ input ports: 2 input port(s) declared.

== Argument de sortie

/ output ports: 1 output port(s) declared.

== Description

Construit un signal complexe à partir d’entrées module et angle.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Blocs math], 
  [Type], [#raw("magnitudeAngleToComplex");], 
  [Label], [Mag-Angle to Complex], 
)
 #strong[Description];

 Combine le port d’entrée 1 (module) et le port d’entrée 2 (angle, radians) en le signal complexe #raw("m*cos(a) + i*m*sin(a)");.

 La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc.

 #strong[Sources d’implémentation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/complexOps.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:math.complexToMagnitudeAngle>)[complexToMagnitudeAngle];, #nlink(<nflow_blocks:math.realImagToComplex>)[realImagToComplex];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
