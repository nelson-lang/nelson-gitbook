#import "../nelson_help.typ": *

= trigFunction <nflow_blocks:math.trigFunction>

Fonction trigonométrique de l’entrée.

== Syntaxe

- #raw("Block type: trigFunction");

== Argument d'entrée

/ input ports: 1 input port(s) declared.

== Argument de sortie

/ output ports: 1 output port(s) declared.

== Description

Fonction trigonométrique de l’entrée.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Blocs math], 
  [Type], [#raw("trigFunction");], 
  [Label], [Trigonometric Function], 
)
 #strong[Description];

 Applique la fonction trigonométrique sélectionnée par le paramètre #raw("Function");, élément par élément, avec expansion scalaire pour les signaux vectoriels. Les angles sont exprimés en radians.

 #strong[Function];

 Valeurs à une entrée : #raw("sin");, #raw("cos");, #raw("tan");, #raw("asin");, #raw("acos");, #raw("atan");, #raw("sinh");, #raw("cosh");, #raw("tanh");, #raw("asinh");, #raw("acosh");, #raw("atanh");.

 #raw("atan2"); utilise deux entrées : #raw("atan2(u1, u2)"); avec u1 sur le port 1 et u2 sur le port 2. #raw("sincos"); produit deux sorties : sin(u) sur le port 1 et cos(u) sur le port 2.

 La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc.

 #strong[Sources d’implémentation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/trigFunction.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:math.atan2>)[atan2];, #nlink(<nflow_blocks:math.sqrt>)[sqrt];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
