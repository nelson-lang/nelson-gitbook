# KDTreeSearcher

Objet de recherche de plus proches voisins.

## 📝 Syntaxe

- Mdl = KDTreeSearcher(X)
- Mdl = KDTreeSearcher(X, Name, Value)
- [idx, D] = knnsearch(Mdl, Y, Name, Value)
- [idx, D] = rangesearch(Mdl, Y, radius, Name, Value)

## 📥 Argument d'entrée

- X - les données à interroger, sous la forme d'une matrice numérique réelle avec un point par ligne.
- Name, Value - options : <b>Distance</b> (défaut <b>'euclidean'</b>), <b>P</b> (exposant de Minkowski) et <b>BucketSize</b>.

## 📤 Argument de sortie

- Mdl - un objet KDTreeSearcher contenant les données et les options de recherche.

## 📄 Description


<b>KDTreeSearcher</b> stocke un ensemble de points et la métrique de distance utilisée pour les interroger, afin que les recherches de plus proches voisins puissent être exécutées sur les mêmes données avec <b>knnsearch</b> et <b>rangesearch</b>. L'objet expose les propriétés <b>X</b>, <b>Distance</b>, <b>DistParameter</b> et <b>BucketSize</b>. 

Les recherches sont déléguées aux fonctions <b>knnsearch</b> et <b>rangesearch</b>, en transmettant la métrique de distance stockée dans l'objet.

## 💡 Exemple



```matlab
X = [0 0; 1 0; 0 2; 4 4];
Mdl = KDTreeSearcher(X);
[idx, D] = knnsearch(Mdl, [0 1; 3 4], 'K', 2)
```


## 🔗 Voir aussi

[knnsearch](../../statistics/7_clustering_anomaly_detection/knnsearch.md), [rangesearch](../../statistics/7_clustering_anomaly_detection/rangesearch.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
