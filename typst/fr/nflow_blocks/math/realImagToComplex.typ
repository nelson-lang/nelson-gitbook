#import "../nelson_help.typ": *

= realImagToComplex <nflow_blocks:math.realImagToComplex>

Construit un signal complexe à partir d’entrées réelle et imaginaire.

== Syntaxe

- #raw("Block type: realImagToComplex");

== Argument d'entrée

/ input ports: 2 input port(s) declared.

== Argument de sortie

/ output ports: 1 output port(s) declared.

== Description

Construit un signal complexe à partir d’entrées réelle et imaginaire.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Blocs math], 
  [Type], [#raw("realImagToComplex");], 
  [Label], [Re-Im to Complex], 
)
 #strong[Description];

 Combine le port d’entrée 1 (partie réelle) et le port d’entrée 2 (partie imaginaire) en un signal de sortie complexe.

 La complexité est un attribut de port orthogonal au type numérique : le signal complexe traverse les blocs mathématiques compatibles (gain, sum, mult, divide, negate, conjugate) et les blocs de routage, et redevient réel via #raw("complexToRealImag");, #raw("complexToMagnitudeAngle"); ou #raw("abs"); (module).

 La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc.

 #strong[Sources d’implémentation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/complexOps.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:math.complexToRealImag>)[complexToRealImag];, #nlink(<nflow_blocks:math.magnitudeAngleToComplex>)[magnitudeAngleToComplex];, #nlink(<nflow_blocks:math.conjugate>)[conjugate];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
