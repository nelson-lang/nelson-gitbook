#import "../nelson_help.typ": *

= matmul <nflow_blocks:math.matmul>


#block-icon(image("matmul.svg"))

Multiplie deux signaux matriciels ou applique une multiplication élément par élément.

== Syntaxe

- #raw("Type de bloc : matmul");

== Description

Le bloc #strong[MatMul]; possède deux entrées et une sortie. Avec #strong[MultiplicationRule]; défini sur #strong[matrix];, il calcule le produit matriciel A \* B. Avec #strong[elementwise];, il multiplie les éléments correspondants.

 Les dimensions doivent être compatibles avec la règle sélectionnée. Les scalaires sont étendus lorsque les règles de disposition des signaux le permettent.

  #strong[Extended Capabilities];

 #strong[Implementation Sources];

 Generation de code : prise en charge pour C et Rust.

 

#source-ref("modules/nflow_blocks/libraries/math/library.json", title: "Manifest")

 

#source-ref("modules/nflow_blocks/src/cpp/matrix/matmul.cpp", title: "Runtime")


== Voir aussi

#nlink(<nflow_blocks:math.mult>)[mult];.
