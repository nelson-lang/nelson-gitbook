#import "nelson_help.typ": *

= sum <data_analysis:sum>

Somme des éléments d'un tableau.

== Syntaxe

- #raw("R = sum(M)");
- #raw("R = sum(M, d)");
- #raw("R = sum(M, 'all')");
- #raw("R = sum(M, ___, f)");
- #raw("R = sum(M, d, t)");
- #raw("R = sum(M, 'all', t, f)");

== Argument d'entrée

/ M: un tableau de double, single, entiers, ...
/ d: dimension le long de laquelle opérer : entier positif scalaire.
/ 'all': somme tous les éléments de M et renvoie un scalaire.
/ t: chaîne : 'default', 'double' ou 'native'.
/ f: chaîne : 'includenan' ou 'omitnan'.

== Argument de sortie

/ R: somme des éléments du tableau.

== Description

#strong[R \= sum(M)]; renvoie la somme selon la première dimension non singleton de M.

 #strong[R \= sum(M, d)]; somme selon la dimension d. #strong[R \= sum(M, 'all')]; somme tous les éléments de M et renvoie un scalaire.

 Les arguments texte optionnels contrôlent le type de sortie (#strong['default'];, #strong['double']; ou #strong['native'];) et le traitement des NaN (#strong['includenan']; ou #strong['omitnan'];).


== Exemples

Sommer selon une dimension.

``````matlab
M = [1 2; 3 4];
R = sum(M, 2)

``````

Sommer tous les éléments.

``````matlab
M = [1 2; 3 4];
R = sum(M, 'all')

``````

Conserver le type entier natif.

``````matlab
M = uint8([10:30:70;20:30:80;30:30:90]);
R = sum(M, 'native')
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.ndims>)[ndims];, #nlink(<data_analysis:prod>)[prod];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
