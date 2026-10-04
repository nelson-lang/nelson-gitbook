# pdist

Distances deux a deux entre observations.

## 📝 Syntaxe

- D = pdist(X)
- D = pdist(X, distance)
- D = pdist(X, distance, distanceParameter)

## 📥 Argument d'entrée

- X - matrice numerique reelle. Les lignes sont les observations et les colonnes sont les variables.
- distance - nom de distance : euclidean, squaredeuclidean, sqeuclidean, cityblock, chebychev, cosine, correlation, hamming, jaccard, minkowski, seuclidean, mahalanobis ou spearman.
- distanceParameter - scalaire positif pour minkowski, vecteur d'echelle pour seuclidean, ou matrice de covariance pour mahalanobis.

## 📤 Argument de sortie

- D - vecteur ligne contenant les distances sous forme condensee.

## 📄 Description

<b>pdist</b> calcule les distances entre paires de lignes de <b>X</b>.

L'ordre de sortie est compatible avec <b>squareform</b> : les paires sont stockees sous la forme (2,1), (3,1), (3,2), puis ainsi de suite.

## 💡 Exemple

Calculer des distances et les developper en matrice symetrique.

```matlab
X = [0 0; 1 0; 0 2];
D = pdist(X)
Z = squareform(D)
```

## 🔗 Voir aussi

[squareform](../../statistics/squareform.md), [pdist2](../../statistics/pdist2.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
