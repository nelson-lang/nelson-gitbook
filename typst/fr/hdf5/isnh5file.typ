#import "nelson_help.typ": *

= isnh5file <hdf5:isnh5file>

Vérifie si le nom de fichier est un fichier .nh5 valide

== Syntaxe

- #raw("tf = isnh5file(filename)");
- #raw("[tf, version, header] = isnh5file(filename)");

== Argument d'entrée

/ filename: une chaîne : nom de fichier .nh5.

== Argument de sortie

/ tf: un booléen : vrai si c'est un fichier .nh5 valide.
/ version: un tableau de chaînes : "-v1" ou " " si non défini.
/ header: un tableau de chaînes : en-tête du fichier nh5 (date de création).

== Description

#strong[isnh5file]; vérifie si le nom de fichier correspond à un fichier .nh5 valide.


== Exemple

``````matlab
A = ones(3, 4);
savemat([tempdir(), 'example_isnh5.mat'], 'A')
R = isnh5file([tempdir(), 'example_isnh5.mat'])
h5save([tempdir(), 'example_isnh5.nh5'], 'A')
[R, VER, HE] = isnh5file([tempdir(), 'example_isnh5.nh5'])
``````


== Voir aussi

#nlink(<matio:ismatfile>)[ismatfile];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
