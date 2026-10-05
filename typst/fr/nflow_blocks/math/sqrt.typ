#import "../nelson_help.typ": *

= sqrt <nflow_blocks:math.sqrt>

Famille de racines carrées de l’entrée.

== Syntaxe

- #raw("Block type: sqrt");

== Argument d'entrée

/ input ports: 1 input port(s) declared.

== Argument de sortie

/ output ports: 1 output port(s) declared.

== Description

Famille de racines carrées de l’entrée.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Blocs math], 
  [Type], [#raw("sqrt");], 
  [Label], [Sqrt], 
)
 #strong[Description];

 Applique la variante de racine carrée sélectionnée par le paramètre #raw("Function");, élément par élément, avec expansion scalaire pour les signaux vectoriels.

 #strong[Function];

 #raw("sqrt"); : racine carrée #raw("sqrt(u)"); (une entrée négative donne NaN sur le chemin réel).

 #raw("signedSqrt"); : racine carrée signée #raw("sign(u)*sqrt(|u|)"); (toujours réelle).

 #raw("rSqrt"); : racine carrée réciproque #raw("1/sqrt(u)");.

 La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc.

 #strong[Sources d’implémentation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/math/sqrt.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:math.abs>)[abs];, #nlink(<nflow_blocks:math.sign>)[sign];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
