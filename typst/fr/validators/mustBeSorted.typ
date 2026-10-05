#import "nelson_help.typ": *

= mustBeSorted <validators:mustBeSorted>

Vérifie que les éléments d'un tableau sont triés ou signale une erreur.

== Syntaxe

- #raw("mustBeSorted(A)");
- #raw("mustBeSorted(A, dim)");
- #raw("mustBeSorted(A, direction)");
- #raw("mustBeSorted(A, dim, direction)");
- #raw("mustBeSorted(..., 'MissingPlacement', placement)");
- #raw("mustBeSorted(..., 'ComparisonMethod', method)");

== Argument d'entrée

/ A: une variable : numérique, logique, char, string, tableau de cellules de vecteurs de caractères, ou objet implémentant issorted. Les valeurs complexes sont supportées.
/ dim: un entier positif scalaire : dimension de travail. Par défaut : première dimension dont la taille est différente de 1.
/ direction: 'ascend' (par défaut), 'descend', 'monotonic' (croissant ou décroissant), 'strictascend', 'strictdescend' ou 'strictmonotonic'. Les directions strictes refusent les valeurs répétées et les valeurs manquantes.
/ placement: 'auto' (par défaut), 'first' ou 'last' : position attendue des valeurs manquantes (NaN, string manquante). 'auto' les place à la fin pour l'ordre croissant et au début pour l'ordre décroissant.
/ method: 'auto' (par défaut), 'real' ou 'abs' : comparaison des valeurs numériques. 'real' compare les parties réelles puis les parties imaginaires, 'abs' compare les modules puis les arguments. 'auto' utilise 'real' pour une entrée réelle et 'abs' pour une entrée complexe.

== Description

#strong[mustBeSorted(A)]; signale une erreur si les éléments de #strong[A]; ne sont pas triés. Elle ne retourne pas de valeur.

 Les vecteurs sont vérifiés dans leur ensemble, les matrices colonne par colonne, et les tableaux multidimensionnels selon la première dimension dont la taille est différente de 1.

 Les valeurs vides et les scalaires sont toujours triés.

 Les tableaux réels denses numériques, logiques et char sont vérifiés nativement en un seul parcours ; les autres types utilisent les opérateurs de comparaison de leur classe.

 #strong[mustBeSorted]; est destinée à la validation des propriétés et des arguments de fonctions.


== Exemples

Direction de l'ordre

``````matlab
A = [5 3 3 1];
mustBeSorted(A, 'descend')
mustBeSorted(A)
``````

Valeurs manquantes et valeurs complexes

``````matlab
mustBeSorted([1 2 NaN])
mustBeSorted([NaN 1 2], 'MissingPlacement', 'first')
mustBeSorted([1 -2 3], 'ComparisonMethod', 'abs')
mustBeSorted([1+1i, 1-1i])
``````


== Voir aussi

#nlink(<data_analysis:issorted>)[issorted];, #nlink(<data_analysis:sort>)[sort];, #nlink(<validators:mustBeVector>)[mustBeVector];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
