#import "nelson_help.typ": *

= isprotected <categorical:isprotected>

Determiner si un tableau categoriel est protege.

== Syntaxe

- #raw("tf = isprotected(A)");

== Argument d'entrée

/ A: Valeur d'entree.

== Argument de sortie

/ tf: Scalaire logique qui vaut #strong[true]; pour les tableaux categoriels proteges.

== Description

#strong[isprotected]; indique si un tableau categoriel empeche l'ajout implicite de categories pendant une affectation.

 Les tableaux categoriels ordinaux sont automatiquement proteges.


== Exemple

Creer puis tester un tableau protege.

``````matlab
A = categorical({'low','high'}, {'low','high'}, 'Protected', true); tf = isprotected(A)
``````


== Voir aussi

#nlink(<categorical:categorical>)[categorical];, #nlink(<categorical:isordinal>)[isordinal];, #nlink(<categorical:addcats>)[addcats];, #nlink(<categorical:setcats>)[setcats];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
