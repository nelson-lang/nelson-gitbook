#import "../nelson_help.typ": *

= dotProduct <nflow_blocks:math.dotProduct>

Produit scalaire de deux vecteurs d entree.

== Syntaxe

- #raw("Block type: dotProduct");

== Argument d'entrée

/ input ports: 2 input port(s) declared.

== Argument de sortie

/ output ports: 1 output port(s) declared.

== Description

Produit scalaire de deux vecteurs d entree.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Blocs math], 
  [Type], [#raw("dotProduct");], 
  [Label], [Dot Product], 
)
 #strong[Description];

 Calcule la somme sur i de a\[i\]\*b\[i\] pour les deux vecteurs d entree et produit le resultat scalaire.

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
