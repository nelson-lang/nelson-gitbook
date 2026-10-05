#import "../nelson_help.typ": *

= tabulate <statistics:1_descriptive_statistics_visualization.tabulate>

Table de frequences.

== Syntaxe

- #raw("tabulate(x)");
- #raw("tbl = tabulate(x)");

== Description

#strong[tabulate]; renvoie les effectifs et pourcentages des valeurs uniques d'un vecteur.

 Une entree numerique renvoie une matrice numerique. Les entrees texte, logiques et categorielles renvoient un tableau de cellules. Une entree numerique d'entiers positifs inclut les lignes de compte nul de 1 a la valeur maximale.


== Exemple

``````matlab
x = [1 3 3 4];
tbl = tabulate(x)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.crosstab>)[crosstab];, #nlink(<data_analysis:groupcounts>)[groupcounts];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
