#import "nelson_help.typ": *

= loadnh5 <hdf5:loadnh5>

charge des données depuis un fichier .nh5 dans l'espace de travail de Nelson.

== Syntaxe

- #raw("loadnh5(filename)");
- #raw("st = loadnh5(filename)");
- #raw("loadnh5(filename, var1, ..., varN)");
- #raw("st = loadnh5(filename, var1, ..., varN)");

== Argument d'entrée

/ filename: une chaîne : nom de fichier .nh5.
/ var1, ..., varN: chaînes : noms des variables à charger dans l'espace de travail de Nelson.

== Argument de sortie

/ st: une structure avec les noms des variables comme champs.

== Description

#strong[loadnh5]; charge des données d'un fichier .nh5 dans l'espace de travail de Nelson.

 Le fichier .nh5 utilise un conteneur HDF5.


== Exemple

``````matlab
A = ones(3, 4);
B = 'hello for open mat users';
savenh5([tempdir(), 'example_h5load.nh5'], 'A', 'B')
clear;
st = loadnh5([tempdir(), 'example_h5load.nh5']);
who
st.A
st.B
clear
who
loadnh5([tempdir(), 'example_h5load.nh5']);
who
A
B
``````


== Voir aussi

#nlink(<hdf5:savenh5>)[savenh5];, #nlink(<hdf5:h5read>)[h5read];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
