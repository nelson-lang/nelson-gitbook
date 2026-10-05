#import "nelson_help.typ": *

= savemat <matio:savemat>

enregistre les variables de l'espace de travail dans un fichier .mat

== Syntaxe

- #raw("savemat(filename)");
- #raw("savemat(filename, version, var1, ..., varN)");
- #raw("savemat(filename, '-append', ...)");
- #raw("savemat(filename, '-nocompression', ...)");

== Argument d'entrée

/ filename: une chaîne : nom de fichier .mat.
/ var1, ..., varN: une chaîne : noms des variables à enregistrer depuis l'espace de travail de Nelson.
/ '-v7.3': format Mat par défaut utilisé.
/ '-v7': format de sortie : version 7 du fichier Mat.
/ '-v6', '-v4': format de sortie : version 6 ou 4 du fichier Mat.
/ '-append': ajoute des variables à un fichier .mat existant (uniquement -v7.3).
/ '-nocompression': désactive la compression du fichier .mat.

== Description

#strong[savemat]; enregistre les variables de l'espace de travail dans un fichier .mat.

 Les types de données de Nelson sont convertis en équivalents compatibles avec les fichiers Mat.


== Bibliographie

Thanks to MATIO library (http:\/\/sourceforge.net\/projects\/matio\/).

== Exemples

``````matlab
A = ones(3, 4);
B = 'hello for open mat users';
savemat([tempdir(), 'example_loadmat.mat'], 'A', 'B')
clear;
st = loadmat([tempdir(), 'example_loadmat.mat']);
who
st.A
st.B
clear
who
loadmat([tempdir(), 'example_loadmat.mat']);
who
A
B

``````

append variables

``````matlab
C = eye(3, 4);
savemat([tempdir(), 'example_loadmat.mat'], 'C', '-append')
clear;
st = loadmat([tempdir(), 'example_loadmat.mat']);
who
st.A
st.B
st.C
clear
who
loadmat([tempdir(), 'example_loadmat.mat']);
who
A
B
C

``````

compression

``````matlab
C = eye(1000, 1000);
savemat([tempdir(), 'example_savemat_with_compression.mat'], 'C')
savemat([tempdir(), 'example_savemat_no_compression.mat'], 'C', '-nocompression')
with_compression = dir([tempdir(), 'example_savemat_with_compression.mat'])
no_compression = dir([tempdir(), 'example_savemat_no_compression.mat'])
``````


== Voir aussi

#nlink(<matio:loadmat>)[loadmat];, #nlink(<stream_manager:save>)[save];, #nlink(<hdf5:savenh5>)[savenh5];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
