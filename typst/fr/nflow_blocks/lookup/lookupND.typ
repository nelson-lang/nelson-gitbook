#import "../nelson_help.typ": *

= lookupND <nflow_blocks:lookup.lookupND>

Table de consultation n-D interpolee.

== Syntaxe

- #raw("Block type: lookupND");

== Argument d'entrée

/ input ports: 2 input port(s) declared.

== Argument de sortie

/ output ports: 1 output port(s) declared.

== Description

Table de consultation n-D interpolee.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Tables de consultation], 
  [Type], [#raw("lookupND");], 
  [Label], [n-D Lookup Table], 
)
 #strong[Description];

 N entrees (une coordonnee par dimension, NumberOfTableDimensions) indexent une Table statique column-major ; interpolation multilineaire \= melange pondere des 2^N coins.

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/lookup/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/lookup/lookupND.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:lookup.lookup1D>)[lookup1D];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
