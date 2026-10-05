#import "../nelson_help.typ": *

= selector <nflow_blocks:utility.selector>


#block-icon(image("selector.svg"))

Sélectionne des éléments du signal d'entrée avec des indices commençant à un.

== Syntaxe

- #raw("Type de bloc : selector");

== Description

Le bloc #strong[Selector]; copie dans sa sortie les éléments indiqués par #strong[Indices];. Les indices commencent à un et la largeur de sortie correspond au nombre d'indices sélectionnés.

 Un indice hors de la plage d'entrée est ramené vers l'élément valide le plus proche.

  #strong[Extended Capabilities];

 #strong[Implementation Sources];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/selector.cpp", title: "Runtime")

