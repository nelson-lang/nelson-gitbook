#import "../nelson_help.typ": *

= conjugate <nflow_blocks:math.conjugate>

Conjugué complexe du signal d’entrée.

== Syntaxe

- #raw("Block type: conjugate");

== Argument d'entrée

/ input ports: 1 input port(s) declared.

== Argument de sortie

/ output ports: 1 output port(s) declared.

== Description

Conjugué complexe du signal d’entrée.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Blocs math], 
  [Type], [#raw("conjugate");], 
  [Label], [Conjugate], 
)
 #strong[Description];

 Émet #raw("conj(z)"); ; pour une entrée réelle le bloc est l’identité.

 La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc.

 #strong[Sources d’implémentation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/complexOps.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:math.realImagToComplex>)[realImagToComplex];, #nlink(<nflow_blocks:math.complexToRealImag>)[complexToRealImag];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
