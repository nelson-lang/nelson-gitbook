#import "../nelson_help.typ": *

= reshape <nflow_blocks:utility.reshape>


#block-icon(image("reshape.svg"))

Modifie les dimensions d'un signal sans changer ses valeurs.

== Syntaxe

- #raw("Type de bloc : reshape");

== Description

Le bloc #strong[Reshape]; conserve l'ordre des éléments et applique les dimensions définies par #strong[OutputDimensions];.

 L'entrée et la sortie doivent contenir le même nombre d'éléments. Une différence est signalée dans les diagnostics de simulation.

  #strong[Extended Capabilities];

 #strong[Implementation Sources];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/reshape.cpp", title: "Runtime")

