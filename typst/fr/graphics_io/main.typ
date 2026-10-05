#import "nelson_help.typ": *

= Fonctions d'entrée/sortie graphiques

Le module Graphics I\/O fournit des fonctions pour importer, exporter et gérer le contenu graphique et les formats d'image.

 Il prend en charge la lecture et l'écriture de fichiers image, la copie de figures et l'enregistrement de tracés dans divers formats pour l'interopérabilité avec d'autres applications.

== Functions

- #nlink(<graphics_io:copygraphics>)[copygraphics]: Copie un tracé vers le presse-papiers.
- #nlink(<graphics_io:imformats>)[imformats]: Gère les formats d'image pris en charge.
- #nlink(<graphics_io:imread>)[imread]: Lit une image à partir d'un fichier graphique.
- #nlink(<graphics_io:imwrite>)[imwrite]: Écrit une image dans un fichier graphique.
- #nlink(<graphics_io:saveas>)[saveas]: Enregistre une figure dans un format de fichier spécifique.


#nested[
#pagebreak(weak: true)
#include "copygraphics.typ"
#pagebreak(weak: true)
#include "imformats.typ"
#pagebreak(weak: true)
#include "imread.typ"
#pagebreak(weak: true)
#include "imwrite.typ"
#pagebreak(weak: true)
#include "saveas.typ"
]
