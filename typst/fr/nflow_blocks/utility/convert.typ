#import "../nelson_help.typ": *

= convert <nflow_blocks:utility.convert>


#block-icon(image("convert.svg"))

Convertit un signal vers un type de données sélectionné.

== Syntaxe

- #raw("Type de bloc : convert");

== Description

Le bloc #strong[Convert]; convertit chaque élément d'entrée vers #strong[OutDataType]; en conservant les dimensions du signal.

 #strong[Rounding]; contrôle la conversion des valeurs non entières. #strong[SaturateOnOverflow]; sélectionne la saturation plutôt que le bouclage lorsque la plage cible est dépassée.

  #strong[Extended Capabilities];

 #strong[Implementation Sources];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/routing/convert.cpp", title: "Runtime")

