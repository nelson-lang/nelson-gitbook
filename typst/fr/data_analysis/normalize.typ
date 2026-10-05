#import "nelson_help.typ": *

= normalize <data_analysis:normalize>

Normalise les données

== Syntaxe

- #raw("N = normalize(A)");
- #raw("N = normalize(A, method)");
- #raw("N = normalize(A, method, methodtype)");
- #raw("N = normalize(A, dim, ___)");
- #raw("[N, C, S] = normalize(___)");

== Argument d'entrée

/ A: tableau numérique ou logique.
/ method: 'zscore', 'norm', 'range', 'center', 'scale' ou 'medianiqr'.
/ methodtype: option de la méthode choisie (par ex. 'std' ou 'robust' pour 'zscore', un ordre de norme pour 'norm', un intervalle à deux éléments pour 'range').
/ dim: dimension le long de laquelle opérer.

== Argument de sortie

/ N: données normalisées.
/ C: valeur de centrage utilisée.
/ S: valeur d'échelle utilisée.

== Description

#strong[normalize]; retourne le score-z par vecteur des données de A (centrage par la moyenne et mise à l'échelle par l'écart-type). Une méthode et un type de méthode permettent de choisir d'autres normalisations. Par défaut, normalize opère le long de la première dimension du tableau dont la taille n'est pas égale à 1.


== Exemple

``````matlab
normalize([1 2 3 4 5])
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.zscore>)[zscore];, #nlink(<statistics:1_descriptive_statistics_visualization.std>)[std];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
