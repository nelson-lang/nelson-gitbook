#import "../nelson_help.typ": *

= lookup1D <nflow_blocks:lookup.lookup1D>

Table de consultation 1-D interpolee.

== Syntaxe

- #raw("Block type: lookup1D");

== Argument d'entrée

/ input ports: 1 input port(s) declared.

== Argument de sortie

/ output ports: 1 output port(s) declared.

== Description

Table de consultation 1-D interpolee.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Tables de consultation], 
  [Type], [#raw("lookup1D");], 
  [Label], [1-D Lookup Table], 
)
 #strong[Description];

 Interpole un couple points de rupture \/ table statique a la valeur d entree. InterpMethod choisit Flat, Nearest, Linear point-slope ou Linear Lagrange ; ExtrapMethod choisit Clip ou Linear. Element par element avec expansion scalaire.

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/lookup/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/lookup/lookup1D.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:lookup.lookup1D>)[lookup1D];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
