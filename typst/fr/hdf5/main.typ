#import "nelson_help.typ": *

= HDF5

Le module HDF5 fournit un support pour travailler avec des fichiers au format Hierarchical Data Format (HDF5) dans Nelson.

 Il permet de créer des jeux de données, de lire et d'écrire des données et attributs, et d'explorer le contenu des fichiers.

 En plus du support HDF5 standard, il inclut des utilitaires pour le format natif de Nelson .nh5, permettant d'enregistrer, charger et inspecter efficacement les variables de l'espace de travail.

 Ce module est essentiel pour gérer des données scientifiques volumineuses, structurées et portables.

== Functions

- #nlink(<hdf5:h5create>)[h5create]: Créé un jeu de données.
- #nlink(<hdf5:h5dump>)[h5dump]: vide le contenu d'un fichier HDF5 au format texte.
- #nlink(<hdf5:h5ls>)[h5ls]: Liste le contenu d'un fichier HDF5.
- #nlink(<hdf5:h5read>)[h5read]: Lit un jeu de données HDF5.
- #nlink(<hdf5:h5readatt>)[h5readatt]: Lit un attribut HDF5.
- #nlink(<hdf5:h5write>)[h5write]: Écrit un jeu de données HDF5.
- #nlink(<hdf5:h5writeatt>)[h5writeatt]: Écrit un attribut HDF5.
- #nlink(<hdf5:isnh5file>)[isnh5file]: Vérifie si le nom de fichier est un fichier .nh5 valide
- #nlink(<hdf5:loadnh5>)[loadnh5]: charge des données depuis un fichier .nh5 dans l'espace de travail de Nelson.
- #nlink(<hdf5:savenh5>)[savenh5]: enregistre des variables de l'espace de travail dans un fichier .nh5
- #nlink(<hdf5:whonh5>)[whonh5]: Liste les variables d'un fichier .nh5 valide.
- #nlink(<hdf5:whosnh5>)[whosnh5]: Liste les variables d'un fichier .nh5 valide avec tailles et types.


#nested[
#pagebreak(weak: true)
#include "h5create.typ"
#pagebreak(weak: true)
#include "h5dump.typ"
#pagebreak(weak: true)
#include "h5ls.typ"
#pagebreak(weak: true)
#include "h5read.typ"
#pagebreak(weak: true)
#include "h5readatt.typ"
#pagebreak(weak: true)
#include "h5write.typ"
#pagebreak(weak: true)
#include "h5writeatt.typ"
#pagebreak(weak: true)
#include "isnh5file.typ"
#pagebreak(weak: true)
#include "loadnh5.typ"
#pagebreak(weak: true)
#include "savenh5.typ"
#pagebreak(weak: true)
#include "whonh5.typ"
#pagebreak(weak: true)
#include "whosnh5.typ"
]
