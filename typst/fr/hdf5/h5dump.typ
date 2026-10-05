#import "nelson_help.typ": *

= h5dump <hdf5:h5dump>

vide le contenu d'un fichier HDF5 au format texte.

== Syntaxe

- #raw("h5dump(filename)");
- #raw("R = h5dump(filename)");
- #raw("h5dump(filename, location)");
- #raw("R = h5dump(filename, location)");

== Argument d'entrée

/ filename: a string: hdf5 filename.
/ location: a string: name of the path to dump.

== Argument de sortie

/ R: une chaîne : vidage du fichier HDF5 au format texte.

== Description

#strong[h5dump]; affiche le contenu d'un fichier HDF5 au format texte.


== Exemple

``````matlab
h5create([tempdir(), 'myfile.h5'],'/myDataset2',[10 20]);
h5dump([tempdir(), 'myfile.h5'])
R = h5dump([tempdir(), 'myfile.h5'])
``````


== Voir aussi

#nlink(<hdf5:h5write>)[h5write];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
