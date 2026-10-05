#import "../nelson_help.typ": *

= complexToMagnitudeAngle <nflow_blocks:math.complexToMagnitudeAngle>

Émet le module et l’angle d’un signal complexe.

== Syntaxe

- #raw("Block type: complexToMagnitudeAngle");

== Argument d'entrée

/ input ports: 1 input port(s) declared.

== Argument de sortie

/ output ports: 2 output port(s) declared.

== Description

Émet le module et l’angle d’un signal complexe.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Blocs math], 
  [Type], [#raw("complexToMagnitudeAngle");], 
  [Label], [Complex to Mag-Angle], 
)
 #strong[Description];

 Le port de sortie 1 porte le module #raw("abs(z)"); et le port de sortie 2 l’angle quatre quadrants #raw("atan2(imag(z), real(z))"); de l’entrée complexe.

 La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc.

 #strong[Sources d’implémentation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/complexOps.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:math.magnitudeAngleToComplex>)[magnitudeAngleToComplex];, #nlink(<nflow_blocks:math.atan2>)[atan2];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
