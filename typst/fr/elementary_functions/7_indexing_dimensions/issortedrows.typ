#import "../nelson_help.typ": *

= issortedrows <elementary_functions:7_indexing_dimensions.issortedrows>

Détermine si les lignes d'une matrice sont triées.

== Syntaxe

- #raw("tf = issortedrows(A)");
- #raw("tf = issortedrows(A, col)");
- #raw("tf = issortedrows(A, ..., direction)");

== Argument d'entrée

/ A: une matrice.
/ col: les colonnes utilisées pour la comparaison.
/ direction: #strong['ascend']; (par défaut) ou #strong['descend'];.

== Argument de sortie

/ tf: un logique : #strong[true]; si les lignes de #strong[A]; sont triées.

== Description

#strong[tf \= issortedrows(A)]; renvoie #strong[true]; si les lignes de #strong[A]; sont triées par ordre croissant.

 Fournissez #strong[col]; et #strong[direction]; pour correspondre au tri de #strong[sortrows];.


== Exemple

``````matlab
issortedrows([1 2; 3 4])
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.sortrows>)[sortrows];, #nlink(<elementary_functions:7_indexing_dimensions.topkrows>)[topkrows];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Auteur: Allan CORNET
