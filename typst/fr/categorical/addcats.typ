#import "nelson_help.typ": *

= addcats <categorical:addcats>

Ajouter des categories a un tableau categoriel.

== Syntaxe

- #raw("B = addcats(A, names)");
- #raw("B = addcats(A, names, 'Before', anchor)");
- #raw("B = addcats(A, names, 'After', anchor)");

== Argument d'entrée

/ A: Tableau categoriel d'entree.
/ names: Nom ou liste de noms de categories a ajouter. Les noms deja presents sont ignores.
/ anchor: Categorie existante utilisee comme point d'insertion avec #strong[Before]; ou #strong[After];.

== Argument de sortie

/ B: Tableau categoriel avec les memes valeurs que #strong[A]; et une liste de categories mise a jour.

== Description

#strong[addcats]; ajoute des categories sans modifier les elements stockes.

 Pour un tableau categoriel ordinal, la position doit etre precisee car l'ordre des categories definit les comparaisons.


== Exemples

Ajouter une categorie a la fin.

``````matlab
A = categorical({'red','blue'}); B = addcats(A, 'green'); categories(B)
``````

Inserer une categorie avant une categorie existante.

``````matlab
A = categorical({'low','high'}, {'low','high'}, 'Ordinal', true); B = addcats(A, 'mid', 'Before', 'high'); categories(B)
``````


== Voir aussi

#nlink(<categorical:categorical>)[categorical];, #nlink(<categorical:categories>)[categories];, #nlink(<categorical:removecats>)[removecats];, #nlink(<categorical:mergecats>)[mergecats];, #nlink(<categorical:reordercats>)[reordercats];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
