#import "../nelson_help.typ": *

= pdist2 <statistics:7_clustering_anomaly_detection.pdist2>

Distances deux a deux entre deux ensembles d'observations.

== Syntaxe

- #raw("D = pdist2(X, Y)");
- #raw("D = pdist2(X, Y, distance)");
- #raw("D = pdist2(X, Y, distance, distanceParameter)");
- #raw("D = pdist2(..., 'Smallest', K)");
- #raw("D = pdist2(..., 'Largest', K)");
- #raw("[D, I] = pdist2(..., 'Smallest', K)");
- #raw("[D, I] = pdist2(..., 'Largest', K)");

== Argument d'entrée

/ X: matrice numerique reelle pleine. Les lignes sont les observations.
/ Y: matrice numerique reelle pleine avec le meme nombre de colonnes que X.
/ distance: nom de distance ou handle de fonction. Les noms supportes incluent euclidean, squaredeuclidean, sqeuclidean, cityblock, chebychev, chebyshev, cosine, correlation, hamming, jaccard, minkowski, seuclidean, mahalanobis, spearman, fasteuclidean et fastseuclidean.
/ distanceParameter: parametre optionnel pour minkowski, seuclidean ou mahalanobis.
/ K: entier positif : nombre de plus petites ou plus grandes distances a retourner pour chaque ligne de Y.

== Argument de sortie

/ D: matrice des distances. Sans Smallest ni Largest, D est de taille size(X, 1)-by-size(Y, 1). Avec Smallest ou Largest, D est de taille min(K, size(X, 1))-by-size(Y, 1).
/ I: indices des lignes de X pour les distances selectionnees. I est disponible uniquement avec Smallest ou Largest.

== Description

#strong[pdist2]; calcule les distances deux a deux entre les lignes de #strong[X]; et les lignes de #strong[Y];. Les distances integrees retournent NaN si l'une des lignes contient NaN. Un handle de fonction de distance doit accepter une ligne de X et toutes les lignes de Y, puis retourner une distance par ligne de Y.


== Fonction(s) utilisée(s)

kmeans kmedoids silhouette

== Exemples

Calculer les distances euclidiennes deux a deux.

``````matlab
X = [0 0; 1 0];
Y = [0 0; 0 2];
D = pdist2(X, Y)
``````

Comparer plusieurs metriques de distance.

``````matlab
X = [1 0; 0 1];
Y = [1 0; 1 1];
Dcos = pdist2(X, Y, 'cosine')
Dhamming = pdist2(X, Y, 'hamming')
``````

Trouver des distances selectionnees et les indices des lignes.

``````matlab
X = [0 0; 1 0; 0 3];
Y = [0 0; 0 2];
[D, I] = pdist2(X, Y, 'euclidean', 'Smallest', 2)
``````

