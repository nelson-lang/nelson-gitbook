#import "../nelson_help.typ": *

= busSelector <nflow_blocks:utility.busSelector>

Extrait des membres d’un bus par chemin.

== Syntaxe

- #raw("Block type: busSelector");

== Argument d'entrée

/ input ports: 1 input port(s) declared.

== Argument de sortie

/ output ports: 2 output port(s) declared.

== Description

Extrait des membres d’un bus par chemin.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Blocs utilitaires], 
  [Type], [#raw("busSelector");], 
  [Label], [Bus Selector], 
)
 #strong[Description];

 Lit son entrée bus et émet un port de sortie par entrée du paramètre #raw("SelectedSignals");. Les chemins adressent les bus imbriqués avec des points (#raw("sub.a");) ; un membre sélectionné qui est lui-même un bus produit une sortie de type bus.

 Chaque sortie adopte le descripteur complet du membre (type, complexité, forme N-D). Un chemin inconnu est une erreur de compilation listant les membres disponibles.

 La page décrit le comportement runtime natif observé dans les sources C++ du module. Les phases déclarées indiquent quand le moteur de simulation appelle le bloc.

 #strong[Sources d’implémentation];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/busSelector.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:utility.busCreator>)[busCreator];, #nlink(<nflow_blocks:utility.demux>)[demux];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Auteur: Allan CORNET
