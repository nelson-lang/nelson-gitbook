#import "nelson_help.typ": *

= MATIO

Le module MATIO prend en charge la lecture et l'écriture de fichiers MAT, un format utilisé par plusieurs environnements de calcul numérique pour stocker des données numériques.

 Il permet à Nelson de vérifier la validité d'un fichier MAT, de charger et sauvegarder des variables d'espace de travail, et d'inspecter le contenu des fichiers.

 Ce module permet l'échange de données entre Nelson et des environnements compatibles avec les fichiers MAT dans les flux de travail scientifiques et d'ingénierie.

== Functions

- #nlink(<matio:ismatfile>)[ismatfile]: Vérifie si le nom de fichier est un fichier .mat valide
- #nlink(<matio:loadmat>)[loadmat]: charge des données depuis un fichier .mat dans l'espace de travail de Nelson.
- #nlink(<matio:savemat>)[savemat]: enregistre les variables de l'espace de travail dans un fichier .mat
- #nlink(<matio:whomat>)[whomat]: Liste les variables d'un fichier .mat valide.
- #nlink(<matio:whosmat>)[whosmat]: Liste les variables d'un fichier .mat valide avec tailles et types.


#nested[
#pagebreak(weak: true)
#include "ismatfile.typ"
#pagebreak(weak: true)
#include "loadmat.typ"
#pagebreak(weak: true)
#include "savemat.typ"
#pagebreak(weak: true)
#include "whomat.typ"
#pagebreak(weak: true)
#include "whosmat.typ"
]
