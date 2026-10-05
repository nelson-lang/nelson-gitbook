#import "nelson_help.typ": *

= NaN <constructors_functions:NaN>

Crée un Not-a-Number

== Syntaxe

- #raw("NaN");
- #raw("nan");
- #raw("NaN(n)");
- #raw("NaN(n, m)");
- #raw("NaN(n, classname)");
- #raw("NaN(n, m, classname)");
- #raw("NaN(classname)");

== Argument d'entrée

/ n: un entier scalaire : nombre de lignes (et de colonnes si m est omis).
/ m: un entier scalaire : nombre de colonnes.
/ classname: une chaîne : 'double' (par défaut) ou 'single'.

== Description

#strong[NaN]; retourne le symbole IEEE NaN (Not a Number).

 #strong[NaN(n)]; retourne une matrice n-par-n remplie de #strong[NaN]; ; #strong[NaN(n, m)]; retourne une matrice n-par-m. L'argument optionnel #strong[classname]; doit valoir #strong['double']; (par défaut) ou #strong['single'];.

 #strong[NaN]; est le résultat d'opérations qui ne produisent pas un résultat numérique bien défini.

 Attention, vous ne devez jamais comparer #strong[NaN]; avec #strong[NaN];, dans ce cas, veuillez utiliser #strong[isnan];.


== Exemples

``````matlab
NaN
``````

``````matlab
3 + NaN
``````

``````matlab
NaN != NaN
isnan(NaN)
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.isnan>)[isnan];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
