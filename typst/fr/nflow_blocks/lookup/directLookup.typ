#import "../nelson_help.typ": *

= directLookup <nflow_blocks:lookup.directLookup>

Table de consultation directe (n-D) sans interpolation.

== Syntaxe

- #raw("Block type: directLookup");

== Argument d'entrée

/ input ports: 2 input port(s) declared.

== Argument de sortie

/ output ports: 1 output port(s) declared.

== Description

Table de consultation directe (n-D) sans interpolation.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Tables de consultation], 
  [Type], [#raw("directLookup");], 
  [Label], [Direct Lookup Table (n-D)], 
)
 #strong[Description];

 N entrees d indices entiers selectionnent un element d une Table statique column-major (mode Element). Les tailles par dimension viennent de TableDimensions ; chaque indice est arrondi et borne (base zero).

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/lookup/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/lookup/directLookup.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:lookup.lookup1D>)[lookup1D];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
