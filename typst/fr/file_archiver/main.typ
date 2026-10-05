#import "nelson_help.typ": *

= Fonctions d'archivage de fichiers

Le module File Archiver fournit des outils pour compresser et décompresser des fichiers dans Nelson.

 Il prend en charge la création d'archives zip et l'extraction de fichiers depuis des archives zip, permettant un stockage, un partage et une gestion efficaces des fichiers.

== Functions

- #nlink(<file_archiver:unzip>)[unzip]: Décompresser une archive zip.
- #nlink(<file_archiver:zip>)[zip]: Compresser des fichiers dans une archive zip.


#nested[
#pagebreak(weak: true)
#include "unzip.typ"
#pagebreak(weak: true)
#include "zip.typ"
]
