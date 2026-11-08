#import "nelson_help.typ": *

= anymissing <data_analysis:anymissing>

Teste la présence de valeurs manquantes.

== Syntaxe

- #raw("tf = anymissing(A)");

== Argument d'entrée

/ A: un tableau, une table ou un categorical.

== Argument de sortie

/ tf: un scalaire logique : #strong[true]; si #strong[A]; contient au moins une valeur manquante.

== Description

#strong[tf \= anymissing(A)]; renvoie #strong[true]; si #strong[A]; contient au moins une valeur manquante (par exemple #strong[NaN]; ou #strong[missing];).


== Exemple

``````matlab
anymissing([1 NaN 3])
``````


== Voir aussi

#nlink(<data_analysis:ismissing>)[ismissing];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
