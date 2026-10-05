#import "nelson_help.typ": *

= whosnh5 <hdf5:whosnh5>

Liste les variables d'un fichier .nh5 valide avec tailles et types.

== Syntaxe

- #raw("whosnh5(filename)");
- #raw("st = whosnh5(filename)");
- #raw("whosnh5(filename, var1, ..., varN)");
- #raw("st = whosnh5(filename, var1, ..., varN)");

== Argument d'entrée

/ filename: une chaîne : nom de fichier .nh5.
/ var1, ..., varN: chaînes : noms des variables à inspecter.

== Argument de sortie

/ st: contient des informations sur les variables dans le tableau de structures st.

== Description

#strong[whosnh5]; liste les variables d'un fichier .nh5 valide.


== Exemple

``````matlab
A = ones(3, 4);
B = 'Nelson';
C = sparse(true);
D = sparse(3i);
savenh5([tempdir(), 'example_whosnh5.nh5'], 'A', 'B', 'C', 'D')
whosnh5([tempdir(), 'example_whosnh5.nh5'])
st = whosnh5([tempdir(), 'example_whosnh5.nh5'])
``````


== Voir aussi

#nlink(<matio:whosmat>)[whosmat];, #nlink(<memory_manager:whos>)[whos];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
