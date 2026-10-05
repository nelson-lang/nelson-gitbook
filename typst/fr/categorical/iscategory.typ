#import "nelson_help.typ": *

= iscategory <categorical:iscategory>

Determiner si des noms sont des categories.

== Syntaxe

- #raw("tf = iscategory(A, names)");

== Argument d'entrée

/ A: Tableau categoriel d'entree.
/ names: Nom de categorie, tableau de strings, tableau de cellules de chaines de caracteres ou pattern a tester.

== Argument de sortie

/ tf: Resultat logique de meme taille que #strong[names];, sauf pour un pattern ou le resultat est scalaire.

== Description

#strong[iscategory]; teste si les noms demandes sont presents dans la liste des categories de #strong[A];.

 Les elements non definis ne creent pas de categorie.


== Exemple

Tester plusieurs noms de categories.

``````matlab
A = categorical({'red','blue'}); tf = iscategory(A, {'red','green'})
``````


== Voir aussi

#nlink(<categorical:categories>)[categories];, #nlink(<categorical:addcats>)[addcats];, #nlink(<categorical:removecats>)[removecats];, #nlink(<categorical:isundefined>)[isundefined];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
