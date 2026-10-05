#import "../nelson_help.typ": *

= var <statistics:1_descriptive_statistics_visualization.var>

Variance

== Syntaxe

- #raw("V = var(A)");
- #raw("V = var(A, w)");
- #raw("V = var(A, w, dim)");
- #raw("V = var(A, w, vecdim)");
- #raw("V = var(A, w, 'all')");
- #raw("V = var(..., nanflag)");
- #raw("[V, M] = var(...)");

== Argument d'entrée

/ A: un vecteur, une matrice ou un tableau multidimensionnel : single, double, int8, int16, int32, int64, uint8, uint16, uint32 ou uint64.
/ w: poids : 0 (normalisation par N-1, par défaut), 1 (normalisation par N) ou un vecteur de poids positifs ou nuls dont la longueur est la taille de la dimension de calcul.
/ dim: un entier positif scalaire : dimension de calcul.
/ vecdim: un vecteur d'entiers positifs : dimensions de calcul.
/ nanflag: 'includenan' (par défaut) ou 'omitnan'.

== Argument de sortie

/ V: Variance de A.
/ M: Moyenne de A utilisée pour calculer la variance, de même taille que V. C'est la moyenne pondérée lorsque w est un vecteur de poids.

== Description

#strong[V \= var(A)]; renvoie la variance des éléments de A le long de la première dimension du tableau dont la taille n'est pas égale à 1.

 #strong[\[V, M\] \= var(...)]; renvoie aussi la moyenne #strong[M]; calculée avec les mêmes poids, dimensions et nanflag que la variance.

 Pour des données entières (int8, int16, int32, int64, uint8, uint16, uint32, uint64), la variance est calculée en double précision et #strong[V]; et #strong[M]; sont de type double.


== Fonction(s) utilisée(s)

std mean cov

== Exemples

``````matlab
M = [4 -7 3; 1 4 -2; 10 7 9];
V = var(M)
``````

Données entières

``````matlab
V = var(int8([-128 127 0]))
``````

Variance pondérée et moyenne pondérée

``````matlab
A = [4 -7 3; 1 4 -2; 10 7 9];
[V, M] = var(A, [1 2 3])
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.cov>)[cov];, #nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [Données entières supportées.],
  [2.0.0], [Second résultat M : moyenne utilisée pour calculer la variance.],
)

// Auteur: Allan CORNET
