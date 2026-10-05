#import "nelson_help.typ": *

= ismissing <data_analysis:ismissing>

Vérifier les valeurs manquantes.

== Syntaxe

- #raw("tf = ismissing(M)");

== Argument d'entrée

/ M: une variable

== Argument de sortie

/ tf: logique : résultat de 'ismissing'.

== Description

#strong[ismissing]; renvoie un tableau logique qui est vrai lorsque les éléments de M sont des valeurs #strong[manquantes];.

 Les données manquantes sont définies comme :

 #strong[NaN]; pour double ou single

 #strong[missing]; pour les tableaux de type string

 #strong[' ']; pour les tableaux de caractères

 #strong[' ']; pour une cellule de tableaux de caractères


== Exemple

``````matlab
A = ["Nel", NaN, "son"];
ismissing(A)
B = [1 2 NaN Inf];
ismissing(B)
C = 'Nel son'
ismissing(C)
D = {'Nel' '' 'son'}
ismissing(D)

``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.isfinite>)[isfinite];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
