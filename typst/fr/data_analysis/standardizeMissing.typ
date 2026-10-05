#import "nelson_help.typ": *

= standardizeMissing <data_analysis:standardizeMissing>

Convertit des indicateurs en valeurs manquantes standard.

== Syntaxe

- #raw("B = standardizeMissing(A, indicators)");

== Argument d'entrée

/ A: Tableau ou table d'entree.
/ indicators: Valeurs a traiter comme manquantes.

== Argument de sortie

/ B: Donnees avec valeurs manquantes standardisees.

== Description

#strong[standardizeMissing]; remplace les indicateurs par des valeurs manquantes standard comme NaN pour les variables numeriques.


== Exemple

``````matlab
T = table([1; -99; 3], 'VariableNames', {'A'});
R = standardizeMissing(T, -99)
``````


== Voir aussi

#nlink(<data_analysis:fillmissing>)[fillmissing];, #nlink(<data_analysis:rmmissing>)[rmmissing];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
