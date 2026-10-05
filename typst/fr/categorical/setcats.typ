#import "nelson_help.typ": *

= setcats <categorical:setcats>

Definir la liste des categories d'un tableau categoriel.

== Syntaxe

- #raw("B = setcats(A, newCategories)");

== Argument d'entrée

/ A: Tableau categoriel d'entree.
/ newCategories: Liste complete de remplacement des categories.

== Argument de sortie

/ B: Tableau categoriel utilisant exactement les categories listees dans #strong[newCategories];.

== Description

#strong[setcats]; remplace la liste des categories d'un tableau categoriel.

 Les elements dont l'ancienne categorie n'est pas presente dans #strong[newCategories]; deviennent non definis. Les nouvelles categories absentes auparavant sont ajoutees comme categories inutilisees.


== Exemples

Conserver seulement certaines categories.

``````matlab
A = categorical({'red','blue','green'}); B = setcats(A, {'red','blue'}); isundefined(B)
``````

Ajouter une categorie inutilisee avec une liste complete.

``````matlab
A = categorical({'red','blue'}); B = setcats(A, {'red','blue','green'}); categories(B)
``````


== Voir aussi

#nlink(<categorical:addcats>)[addcats];, #nlink(<categorical:removecats>)[removecats];, #nlink(<categorical:isundefined>)[isundefined];, #nlink(<categorical:categories>)[categories];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
