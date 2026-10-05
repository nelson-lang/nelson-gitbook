#import "nelson_help.typ": *

= cell2mat <data_structures:cell2mat>

Transformer un tableau cellulaire contenant des matrices en une seule matrice concaténée.

== Syntaxe

- #raw("M = cell2mat(ce)");

== Argument d'entrée

/ ce: un tableau cellulaire.

== Argument de sortie

/ M: un tableau.

== Description

#strong[M \= cell2mat(ce)]; crée une matrice unique en fusionnant tous les éléments du tableau cellulaire #strong[ce]; dans un tableau multidimensionnel. Les éléments de #strong[ce]; peuvent être des matrices numériques, logiques ou de caractères, des tableaux cellulaires ou des structs, et doivent être compatibles pour la concaténation via la fonction#strong[cat];.


== Exemple

``````matlab
C = {[10], [20 30 40]; [90; 50], [60 76 88; 110 111 112]};
 M = cell2mat(C)
``````


== Voir aussi

#nlink(<data_structures:cell>)[cell];, #nlink(<data_structures:struct>)[struct];, #nlink(<data_structures:struct2cell>)[struct2cell];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
