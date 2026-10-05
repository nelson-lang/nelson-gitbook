#import "../nelson_help.typ": *

= sortrows <elementary_functions:7_indexing_dimensions.sortrows>

Trier les lignes d'un tableau.

== Syntaxe

- #raw("B = sortrows(A)");
- #raw("B = sortrows(A, col)");
- #raw("[B, index] = sortrows(...)");

== Argument d'entrée

/ A: tableau dont les lignes sont triees.
/ col: indice de colonne ou vecteur d'indices de colonnes. Un indice negatif demande l'ordre decroissant pour cette cle.

== Argument de sortie

/ B: tableau dont les lignes sont triees selon les cles selectionnees.
/ index: indices de lignes tels que B \= A(index,:).

== Description

Les lignes dont les clés sélectionnées sont égales conservent leur ordre initial, y compris pour les clés textuelles en cellule triées par ordre décroissant.

 sortrows trie les lignes d'un tableau en utilisant une ou plusieurs colonnes comme cles.

 Les indices de colonnes negatifs demandent un ordre decroissant pour la cle correspondante.


== Fonction(s) utilisée(s)

sort

== Exemple

Trier les lignes par la premiere colonne croissante et la deuxieme colonne decroissante.

``````matlab
A = [2 3; 1 4; 2 1];
[B, index] = sortrows(A, [1 -2])
``````


== Voir aussi

#nlink(<data_analysis:sort>)[sort];, #nlink(<data_analysis:issorted>)[issorted];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
