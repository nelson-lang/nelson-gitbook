# var

Variance

## 📝 Syntaxe

- V = var(A)
- V = var(A, w)
- V = var(A, w, dim)
- V = var(A, w, vecdim)
- V = var(A, w, 'all')
- V = var(..., nanflag)
- [V, M] = var(...)

## 📥 Argument d'entrée

- A - un vecteur, une matrice ou un tableau multidimensionnel : single, double, int8, int16, int32, int64, uint8, uint16, uint32 ou uint64.
- w - poids : 0 (normalisation par N-1, par défaut), 1 (normalisation par N) ou un vecteur de poids positifs ou nuls dont la longueur est la taille de la dimension de calcul.
- dim - un entier positif scalaire : dimension de calcul.
- vecdim - un vecteur d'entiers positifs : dimensions de calcul.
- nanflag - 'includenan' (par défaut) ou 'omitnan'.

## 📤 Argument de sortie

- V - Variance de A.
- M - Moyenne de A utilisée pour calculer la variance, de même taille que V. C'est la moyenne pondérée lorsque w est un vecteur de poids.

## 📄 Description

<b>V = var(A)</b> renvoie la variance des éléments de A le long de la première dimension du tableau dont la taille n'est pas égale à 1.

<b>[V, M] = var(...)</b> renvoie aussi la moyenne <b>M</b> calculée avec les mêmes poids, dimensions et nanflag que la variance.

Pour des données entières (int8, int16, int32, int64, uint8, uint16, uint32, uint64), la variance est calculée en double précision et <b>V</b> et <b>M</b> sont de type double.

## Fonction(s) utilisée(s)

    std
    mean
    cov

## 💡 Exemples

```matlab
M = [4 -7 3; 1 4 -2; 10 7 9];
V = var(M)
```

Données entières

```matlab
V = var(int8([-128 127 0]))
```

Variance pondérée et moyenne pondérée

```matlab
A = [4 -7 3; 1 4 -2; 10 7 9];
[V, M] = var(A, [1 2 3])
```

## 🔗 Voir aussi

[cov](../../statistics/cov.md), [mean](../../statistics/mean.md).

## 🕔 Historique

| Version | 📄 Description                                                  |
| ------- | --------------------------------------------------------------- |
| 1.0.0   | version initiale                                                |
| 2.0.0   | Données entières supportées.                                    |
| 2.0.0   | Second résultat M : moyenne utilisée pour calculer la variance. |

<!--
## 👤 Auteur

Allan CORNET
-->
