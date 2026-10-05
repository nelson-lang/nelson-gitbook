#import "nelson_help.typ": *

= isundefined <categorical:isundefined>

Trouver les elements categoriels non definis.

== Syntaxe

- #raw("tf = isundefined(A)");

== Argument d'entrée

/ A: Tableau d'entree.

== Argument de sortie

/ tf: Tableau logique de meme taille que #strong[A];.

== Description

#strong[isundefined]; retourne #strong[true]; pour les elements categoriels qui n'appartiennent a aucune categorie.

 Pour une entree non categorielle, le resultat est un tableau logique de valeurs #strong[false];.


== Exemple

Localiser les valeurs categorielles non definies.

``````matlab
A = categorical({'red','','blue'}); tf = isundefined(A)
``````


== Voir aussi

#nlink(<categorical:categorical>)[categorical];, #nlink(<categorical:categories>)[categories];, #nlink(<categorical:setcats>)[setcats];, #nlink(<categorical:countcats>)[countcats];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
