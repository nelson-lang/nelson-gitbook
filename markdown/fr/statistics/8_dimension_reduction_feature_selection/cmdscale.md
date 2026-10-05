# cmdscale

Positionnement multidimensionnel classique.

## 📝 Syntaxe

- Y = cmdscale(D)
- Y = cmdscale(D, p)
- [Y, e] = cmdscale(...)

## 📄 Description


<b>cmdscale</b> calcule une configuration de positionnement multidimensionnel classique a partir d'une matrice de distances, de dissimilarites ou de similarites. 

D peut etre une matrice carree ou un vecteur de distances accepte par squareform. Si p est precise, seules les coordonnees associees aux valeurs propres positives parmi les p premieres dimensions sont retournees. 

Le vecteur e contient les valeurs propres ordonnees de la matrice de produits internes centree. Lorsque p est precise, e contient au plus p valeurs.

## 💡 Exemple



```matlab
X = [0 0; 1 0; 0 2; 2 2];
D = squareform(pdist(X));
[Y, e] = cmdscale(D)
```


## 🔗 Voir aussi

[pdist](../../statistics/7_clustering_anomaly_detection/pdist.md), [squareform](../../statistics/7_clustering_anomaly_detection/squareform.md), [pca](../../statistics/8_dimension_reduction_feature_selection/pca.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
