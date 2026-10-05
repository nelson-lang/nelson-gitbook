#import "../nelson_help.typ": *

= mathFunction <nflow_blocks:math.mathFunction>

Fonction mathématique de l’entrée.

== Syntaxe

- #raw("Block type: mathFunction");

== Argument d'entrée

/ input ports: 1 input port(s) declared.

== Argument de sortie

/ output ports: 1 output port(s) declared.

== Description

Fonction mathématique de l’entrée.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Blocs math], 
  [Type], [#raw("mathFunction");], 
  [Label], [Math Function], 
)
 #strong[Description];

 Applique la fonction mathématique sélectionnée par le paramètre #raw("Function");, élément par élément, avec expansion scalaire pour les signaux vectoriels.

 #strong[Function];

 Valeurs à une entrée : #raw("exp");, #raw("log");, #raw("10^u"); (10 puissance l’entrée), #raw("log10");, #raw("square"); (u\*u), #raw("sqrt");, #raw("reciprocal"); (1\/u).

 Valeurs à deux entrées (u1 sur le port 1, u2 sur le port 2) : #raw("pow"); (u1^u2), #raw("hypot"); (sqrt(u1^2+u2^2)), #raw("rem"); (reste du signe de u1), #raw("mod"); (modulo du signe de u2, mod(u1,0)\=u1).

 La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc.

 #strong[Sources d’implémentation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/mathFunction.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:math.trigFunction>)[trigFunction];, #nlink(<nflow_blocks:math.sqrt>)[sqrt];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
