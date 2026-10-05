#import "nelson_help.typ": *

= JavaScript Object Notation (JSON)

Le module JSON fournit des fonctions pour encoder, décoder et formater des données JSON, permettant l'échange facile d'informations structurées entre Nelson et des systèmes externes.

 JSON (JavaScript Object Notation) est un format de données texte léger largement utilisé pour transmettre des paires attribut-valeur et des tableaux.

 Ce module permet à Nelson d'interopérer avec des services web, des fichiers de configuration et des applications qui utilisent JSON.

== Functions

- #nlink(<json:jsondecode>)[jsondecode]: décodage d'une chaîne JSON en objet Nelson.
- #nlink(<json:jsonencode>)[jsonencode]: encode un objet Nelson en une chaîne JSON.
- #nlink(<json:jsonprettyprint>)[jsonprettyprint]: formate une chaîne JSON.


#nested[
#pagebreak(weak: true)
#include "jsondecode.typ"
#pagebreak(weak: true)
#include "jsonencode.typ"
#pagebreak(weak: true)
#include "jsonprettyprint.typ"
]
