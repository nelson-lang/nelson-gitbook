#import "nelson_help.typ": *

= h5write <hdf5:h5write>

Écrit un jeu de données HDF5.

== Syntaxe

- #raw("h5write(filename, location, value)");

== Argument d'entrée

/ filename: a string: hdf5 filename.
/ location: une chaîne : chemin complet identifiant un jeu de données.
/ value: une valeur : types supportés : double, uint64, uint32, uint16, uint8, single, int64, int32, int16, int8, tableau de caractères ou objet de classe Nelson.

== Description

#strong[h5write]; écrit des données dans l'ensemble du jeu de données #strong[location]; dans le fichier HDF5.

 Les objets de classe Nelson, y compris les objets de classe historiques et les objets classdef valeur ou handle, sont écrits avec les métadonnées objet Nelson.


== Exemples

``````matlab
h5filename = [tempdir(), 'doc_h5write.h5'];
R = rand(3, 4)
h5write(h5filename,'/rand', R);
h5write(h5filename,'/str', 'Hello');
R2 = h5read(h5filename, '/rand')
``````

``````matlab
h5filename = [tempdir(), 'doc_h5write_class.h5'];
if isfile(h5filename) rmfile(h5filename) end
addpath([nelsonroot(), '/modules/overload/examples/complex']);
obj = complexObj(3, 4);
h5write(h5filename, '/obj', obj);
R = h5read(h5filename, '/obj');
class(R)
R.r
R.i
``````


== Voir aussi

#nlink(<hdf5:h5read>)[h5read];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [Les objets de classe Nelson peuvent être écrits avec les métadonnées objet.],
)

// Auteur: Allan CORNET
