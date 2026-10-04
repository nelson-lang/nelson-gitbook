# mahal

Distance de Mahalanobis au carre vers des echantillons de reference.

## 📝 Syntaxe

- d2 = mahal(Y, X)

## 📄 Description

<b>mahal</b> renvoie la distance de Mahalanobis au carre de chaque observation de <b>Y</b> vers la matrice d'echantillons de reference <b>X</b>.

<b>X</b> et <b>Y</b> doivent avoir le meme nombre de colonnes. <b>X</b> doit avoir plus de lignes que de colonnes.

## 💡 Exemple

```matlab
X = [1 2; 2 3; 3 5; 4 4; 5 7; 6 8];
Y = [3 4; 5 6; 8 10];
d2 = mahal(Y, X)
```

## 🔗 Voir aussi

[cov](../../statistics/cov.md), [pdist2](../../statistics/pdist2.md), [pca](../../statistics/pca.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
