#import "nelson_help.typ": *

= whomat <matio:whomat>

Liste les variables d'un fichier .mat valide.

== Syntaxe

- #raw("whomat(filename)");
- #raw("ce = whomat(filename)");
- #raw("whomat(filename, var1, ..., varN)");
- #raw("ce = whomat(filename, var1, ..., varN)");

== Argument d'entrée

/ filename: une chaîne : nom de fichier .mat.
/ var1, ..., varN: une chaîne : noms des variables à inspecter.

== Argument de sortie

/ ce: cellule de chaînes contenant les noms des variables.

== Description

#strong[whomat]; liste les variables d'un fichier .mat valide.


== Bibliographie

Remerciements à la bibliothèque MATIO (http:\/\/sourceforge.net\/projects\/matio\/).

== Exemple

``````matlab
A = ones(3, 4);
B = 'Nelson';
C = sparse(true);
D = sparse(3i);
savemat([tempdir(), 'example_whomat-v7.3.mat'], 'A', 'B', 'C', 'D', '-v7.3')
whomat([tempdir(), 'example_whomat-v7.3.mat'])
ce = whomat([tempdir(), 'example_whomat-v7.3.mat'])
``````


== Voir aussi

#nlink(<hdf5:whonh5>)[whonh5];, #nlink(<memory_manager:who>)[who];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
