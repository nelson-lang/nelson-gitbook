#import "../nelson_help.typ": *

= crossProduct <nflow_blocks:math.crossProduct>

Produit vectoriel de deux vecteurs a 3 elements.

== Syntaxe

- #raw("Block type: crossProduct");

== Argument d'entrée

/ input ports: 2 input port(s) declared.

== Argument de sortie

/ output ports: 1 output port(s) declared.

== Description

Produit vectoriel de deux vecteurs a 3 elements.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Blocs math], 
  [Type], [#raw("crossProduct");], 
  [Label], [Cross Product], 
)
 #strong[Description];

 Calcule le produit vectoriel a x b de deux vecteurs d entree a 3 elements et produit le vecteur resultat a 3 elements.

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/matrix/vectorMath.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:math.sum>)[sum];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
