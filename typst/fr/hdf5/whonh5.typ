#import "nelson_help.typ": *

= whonh5 <hdf5:whonh5>

Liste les variables d'un fichier .nh5 valide.

== Syntaxe

- #raw("whonh5(filename)");
- #raw("ce = whonh5(filename)");
- #raw("whonh5(filename, var1, ..., varN)");
- #raw("ce = whonh5(filename, var1, ..., varN)");

== Argument d'entrée

/ filename: une chaîne : nom de fichier .nh5.
/ var1, ..., varN: chaînes : noms des variables à inspecter.

== Argument de sortie

/ ce: un tableau (cell) de chaînes contenant les noms des variables.

== Description

#strong[whonh5]; liste les variables d'un fichier .nh5 valide.


== Exemple

``````matlab
A = ones(3, 4);
B = 'Nelson';
C = sparse(true);
D = sparse(3i);
savenh5([tempdir(), 'example_whonh5.nh5'], 'A', 'B', 'C', 'D')
whonh5([tempdir(), 'example_whonh5.nh5'])
ce = whonh5([tempdir(), 'example_whonh5.nh5'])
``````


== Voir aussi

#nlink(<matio:whomat>)[whomat];, #nlink(<memory_manager:who>)[who];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
