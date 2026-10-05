#import "../nelson_help.typ": *

= sumElements <nflow_blocks:math.sumElements>

Somme des elements d un vecteur d entree.

== Syntaxe

- #raw("Block type: sumElements");

== Argument d'entrée

/ input ports: 1 input port(s) declared.

== Argument de sortie

/ output ports: 1 output port(s) declared.

== Description

Somme des elements d un vecteur d entree.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Blocs math], 
  [Type], [#raw("sumElements");], 
  [Label], [Sum of Elements], 
)
 #strong[Description];

 Additionne tous les elements du vecteur d entree et produit le resultat scalaire. Une entree scalaire est renvoyee telle quelle.

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
