#import "nelson_help.typ": *

= whosmat <matio:whosmat>

Liste les variables d'un fichier .mat valide avec tailles et types.

== Syntaxe

- #raw("whosmat(filename)");
- #raw("st = whosmat(filename)");
- #raw("whosmat(filename, var1, ..., varN)");
- #raw("st = whosmat(filename, var1, ..., varN)");

== Argument d'entrée

/ filename: une chaîne : nom de fichier .mat.
/ var1, ..., varN: une chaîne : noms des variables à inspecter.

== Argument de sortie

/ st: contient des informations sur les variables dans le tableau de structures st.

== Description

#strong[whosmat]; liste les variables d'un fichier .mat valide.


== Bibliographie

Remerciements à la bibliothèque MATIO (http:\/\/sourceforge.net\/projects\/matio\/).

== Exemple

``````matlab
A = ones(3, 4);
B = 'Nelson';
C = sparse(true);
D = sparse(3i);
savemat([tempdir(), 'example_whosmat-v7.3.mat'], 'A', 'B', 'C', 'D', '-v7.3')
whosmat([tempdir(), 'example_whosmat-v7.3.mat'])
st = whosmat([tempdir(), 'example_whosmat-v7.3.mat'])
``````


== Voir aussi

#nlink(<hdf5:whosnh5>)[whosnh5];, #nlink(<memory_manager:whos>)[whos];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
