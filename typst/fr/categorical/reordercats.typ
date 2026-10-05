#import "nelson_help.typ": *

= reordercats <categorical:reordercats>

Reordonner les categories d'un tableau categoriel.

== Syntaxe

- #raw("B = reordercats(A)");
- #raw("B = reordercats(A, newOrder)");

== Argument d'entrée

/ A: Tableau categoriel d'entree.
/ newOrder: Nouvel ordre des categories, specifie par noms ou par positions numeriques.

== Argument de sortie

/ B: Tableau categoriel avec les memes valeurs affichees que #strong[A]; et une liste de categories reordonnee.

== Description

#strong[reordercats]; modifie l'ordre des categories. Si #strong[newOrder]; est omis, les categories sont triees par nom.

 Pour les tableaux ordinaux, le nouvel ordre modifie les comparaisons et l'ordre de tri.


== Exemples

Specifier un nouvel ordre.

``````matlab
A = categorical({'red','blue'}, {'red','blue'}); B = reordercats(A, {'blue','red'}); categories(B)
``````

Trier les categories par nom.

``````matlab
A = categorical({'plane','car','train'}); B = reordercats(A); categories(B)
``````


== Voir aussi

#nlink(<categorical:categories>)[categories];, #nlink(<categorical:renamecats>)[renamecats];, #nlink(<categorical:isordinal>)[isordinal];, #nlink(<data_analysis:sort>)[sort];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
