#import "nelson_help.typ": *

= mergecats <categorical:mergecats>

Fusionner des categories dans un tableau categoriel.

== Syntaxe

- #raw("B = mergecats(A, oldCategories)");
- #raw("B = mergecats(A, oldCategories, newCategory)");

== Argument d'entrée

/ A: Tableau categoriel d'entree.
/ oldCategories: Categories dont les elements sont fusionnes.
/ newCategory: Nom de la categorie fusionnee. Si omis, la premiere categorie de #strong[oldCategories]; est conservee.

== Argument de sortie

/ B: Tableau categoriel avec les codes de categories fusionnes.

== Description

#strong[mergecats]; remplace plusieurs categories par une seule categorie et reaffecte tous les elements correspondants.

 Les categories non listees dans #strong[oldCategories]; conservent leurs valeurs et leur ordre relatif.


== Exemple

Fusionner plusieurs categories en une categorie.

``````matlab
A = categorical({'red','blue','green'}); B = mergecats(A, {'blue','green'}, 'other'); categories(B)
``````


== Voir aussi

#nlink(<categorical:addcats>)[addcats];, #nlink(<categorical:removecats>)[removecats];, #nlink(<categorical:renamecats>)[renamecats];, #nlink(<categorical:setcats>)[setcats];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
