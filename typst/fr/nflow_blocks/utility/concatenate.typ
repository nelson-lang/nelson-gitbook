#import "../nelson_help.typ": *

= concatenate <nflow_blocks:utility.concatenate>


#block-icon(image("concatenate.svg"))

Concatène les signaux d'entrée selon une dimension sélectionnée.

== Syntaxe

- #raw("Type de bloc : concatenate");

== Description

Le bloc #strong[Concatenate]; assemble tous les signaux d'entrée selon #strong[ConcatenateDimension];. La dimension 1 assemble les lignes, la dimension 2 les colonnes et les valeurs supérieures utilisent une dimension supplémentaire.

 Toutes les dimensions autres que la dimension de concaténation doivent être compatibles.

  #strong[Extended Capabilities];

 #strong[Implementation Sources];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/concatenate.cpp", title: "Runtime")

