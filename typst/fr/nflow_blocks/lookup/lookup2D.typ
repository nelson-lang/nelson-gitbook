#import "../nelson_help.typ": *

= lookup2D <nflow_blocks:lookup.lookup2D>

Table de consultation 2-D interpolee.

== Syntaxe

- #raw("Block type: lookup2D");

== Argument d'entrée

/ input ports: 2 input port(s) declared.

== Argument de sortie

/ output ports: 1 output port(s) declared.

== Description

Table de consultation 2-D interpolee.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Tables de consultation], 
  [Type], [#raw("lookup2D");], 
  [Label], [2-D Lookup Table], 
)
 #strong[Description];

 Deux entrees (coordonnees ligne et colonne) indexent une matrice Table statique column-major ; interpolation bilineaire \/ Flat \/ Nearest avec extrapolation Clip ou Linear.

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/lookup/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/lookup/lookup2D.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:lookup.lookup1D>)[lookup1D];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
