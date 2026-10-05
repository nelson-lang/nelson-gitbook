#import "nelson_help.typ": *

= loadmat <matio:loadmat>

charge des données depuis un fichier .mat dans l'espace de travail de Nelson.

== Syntaxe

- #raw("loadmat(filename)");
- #raw("st = loadmat(filename)");
- #raw("loadmat(filename, var1, ..., varN)");
- #raw("st = loadmat(filename, var1, ..., varN)");

== Argument d'entrée

/ filename: une chaîne : nom de fichier .mat.
/ var1, ..., varN: une chaîne : noms des variables à charger dans l'espace de travail de Nelson.

== Argument de sortie

/ st: une structure dont les noms de champs correspondent aux noms des variables.

== Description

#strong[loadmat]; charge des données depuis un fichier .mat vers l'espace de travail de Nelson.


== Bibliographie

Remerciements à la bibliothèque MATIO (http:\/\/sourceforge.net\/projects\/matio\/).

== Exemple

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


== Voir aussi

#nlink(<stream_manager:load>)[load];, #nlink(<stream_manager:save>)[save];, #nlink(<matio:savemat>)[savemat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
