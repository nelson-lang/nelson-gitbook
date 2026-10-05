#import "nelson_help.typ": *

= accumarray <data_analysis:accumarray>

Construit un tableau par accumulation.

== Syntaxe

- #raw("A = accumarray(subs, val)");
- #raw("A = accumarray(subs, val, sz)");
- #raw("A = accumarray(subs, val, sz, fun)");
- #raw("A = accumarray(subs, val, sz, fun, fillval)");

== Argument d'entrée

/ subs: indices : vecteur colonne ou matrice d'entiers positifs.
/ val: valeurs a accumuler : vecteur colonne ou scalaire.
/ sz: taille de la sortie : vecteur ligne ou \[\].
/ fun: fonction d'accumulation : handle de fonction (defaut \@sum).
/ fillval: valeur des positions vides (defaut 0).

== Argument de sortie

/ A: tableau accumule.

== Description

#strong[accumarray(subs, val)]; regroupe les elements de #strong[val]; selon les indices de #strong[subs]; et applique #strong[\@sum]; a chaque groupe.

 Chaque ligne de #strong[subs]; designe la position de sortie ou la valeur correspondante de #strong[val]; est accumulee.

 #strong[fun]; remplace la somme par defaut, et #strong[fillval]; fixe la valeur des positions ne recevant aucune contribution.


== Exemple

``````matlab
accumarray([1;2;1;3], [10;20;30;40])
accumarray([1;1;2], [3;5;7], [], @max)
``````


== Voir aussi

#nlink(<data_analysis:sum>)[sum];, #nlink(<data_analysis:unique>)[unique];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
