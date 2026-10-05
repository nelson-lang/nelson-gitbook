#import "nelson_help.typ": *

= savenh5 <hdf5:savenh5>

enregistre des variables de l'espace de travail dans un fichier .nh5

== Syntaxe

- #raw("savenh5(filename)");
- #raw("savenh5(filename, var1, ..., varN)");
- #raw("savenh5(filename, '-append', ...)");
- #raw("savenh5(filename, '-nocompression', ...)");

== Argument d'entrée

/ filename: une chaîne : nom de fichier .nh5.
/ var1, ..., varN: chaînes : noms des variables à enregistrer depuis l'espace de travail de Nelson.
/ '-append': ajoute des variables à un fichier .nh5 existant.
/ '-nocompression': désactive la compression du fichier .nh5.

== Description

#strong[savenh5]; enregistre des variables de l'espace de travail dans un fichier .nh5.

 Le fichier .nh5 utilise un conteneur HDF5.


== Exemples

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

append variables

``````matlab
C = eye(3, 4);
savenh5([tempdir(), 'example_h5load.nh5'], 'C', '-append')
clear;
st = loadnh5([tempdir(), 'example_h5load.nh5']);
who
st.A
st.B
st.C
clear
who
loadnh5([tempdir(), 'example_h5load.nh5']);
who
A
B
C
``````

compression

``````matlab
C = eye(1000, 1000);
savenh5([tempdir(), 'example_h5save_with_compression.nh5'], 'C')
savenh5([tempdir(), 'example_h5save_no_compression.nh5'], 'C', '-nocompression')
with_compression = dir([tempdir(), 'example_h5save_with_compression.nh5'])
no_compression = dir([tempdir(), 'example_h5save_no_compression.nh5'])
``````


== Voir aussi

#nlink(<hdf5:loadnh5>)[loadnh5];, #nlink(<hdf5:h5write>)[h5write];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
