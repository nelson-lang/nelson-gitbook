#import "../nelson_help.typ": *

= multiportSwitch <nflow_blocks:utility.multiportSwitch>

Route une des entrees de donnees vers la sortie, selon une entree de controle.

== Syntaxe

- #raw("Block type: multiportSwitch");

== Argument d'entrée

/ input ports: 1 control + N data input port(s) declared.

== Argument de sortie

/ output ports: 1 output port(s) declared.

== Description

Route une des entrees de donnees vers la sortie, selon une entree de controle.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Utilitaires], 
  [Type], [#raw("multiportSwitch");], 
  [Label], [Multiport Switch], 
)
 #strong[Description];

 Le port d entree 1 est le controle ; les autres ports sont des entrees de donnees. Le controle est arrondi et borne au nombre de ports de donnees (base un), et l entree de donnees selectionnee est copiee sur la sortie element par element.

 La page decrit le comportement runtime natif observe dans les sources C++ du module. Les phases declarees indiquent quand le moteur de simulation appelle le bloc.

 Generation de code : prise en charge pour C et Rust.

 #strong[Sources d implementation];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/multiportSwitch.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:utility.mux>)[mux];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
