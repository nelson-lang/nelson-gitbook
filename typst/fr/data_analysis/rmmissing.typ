#import "nelson_help.typ": *

= rmmissing <data_analysis:rmmissing>

Supprime les donnees manquantes.

== Syntaxe

- #raw("B = rmmissing(A)");
- #raw("B = rmmissing(A, dim)");

== Argument d'entrée

/ A: Tableau ou table d'entree.
/ dim: Dimension de traitement.

== Argument de sortie

/ B: Donnees sans lignes, colonnes ou elements manquants.

== Description

#strong[rmmissing]; supprime les donnees manquantes des tableaux et supprime les lignes ou variables contenant des valeurs manquantes dans les tables.


== Exemples

``````matlab
A = [1 NaN; 2 3; NaN 4];
B = rmmissing(A)
``````

``````matlab
T = table([1; NaN; 3], {'a'; ''; 'c'}, 'VariableNames', {'A', 'B'});
R = rmmissing(T)
``````


== Voir aussi

#nlink(<data_analysis:ismissing>)[ismissing];, #nlink(<data_analysis:fillmissing>)[fillmissing];, #nlink(<data_analysis:standardizeMissing>)[standardizeMissing];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
