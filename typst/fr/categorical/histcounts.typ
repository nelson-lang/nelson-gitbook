#import "nelson_help.typ": *

= histcounts <categorical:histcounts>

Compter les valeurs categorielles pour des resumes de type histogramme.

== Syntaxe

- #raw("counts = histcounts(A)");

== Argument d'entrée

/ A: Tableau categoriel d'entree.

== Argument de sortie

/ counts: Comptes pour chaque categorie, dans l'ordre des categories.

== Description

#strong[histcounts]; retourne les comptes de categories d'un tableau categoriel.

 Le resultat est equivalent a #strong[countcats(A)];; les elements non definis sont ignores.


== Exemple

Compter les valeurs de chaque categorie.

``````matlab
A = categorical({'red','blue','red'}); counts = histcounts(A)
``````


== Voir aussi

#nlink(<categorical:countcats>)[countcats];, #nlink(<categorical:categories>)[categories];, #nlink(<categorical:isundefined>)[isundefined];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
