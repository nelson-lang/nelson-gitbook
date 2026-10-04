# std

Écart type

## 📝 Syntaxe

- S = std(M)

## 📥 Argument d'entrée

- M - un vecteur, une matrice ou un tableau multidimensionnel : single, double, int8, int16, int32, int64, uint8, uint16, uint32 ou uint64.

## 📤 Argument de sortie

- S - Écart type de M.

## 📄 Description

<b>S = std(M)</b> renvoie l'écart type des éléments de M le long de la première dimension du tableau dont la taille n'est pas égale à 1.

Pour des données entières (int8, int16, int32, int64, uint8, uint16, uint32, uint64), l'écart type est calculé en double précision et <b>S</b> est de type double. La moyenne renvoyée en second résultat est aussi de type double.

## Fonction(s) utilisée(s)

    var
    mean
    cov

## 💡 Exemples

```matlab
M = [4 -7 3; 1 4 -2; 10 7 9];
S = std(M)
```

Données entières

```matlab
[S, M] = std(uint8([10 20 255]))
```

## 🔗 Voir aussi

[var](../../statistics/var.md), [mean](../../statistics/mean.md).

## 🕔 Historique

| Version | 📄 Description               |
| ------- | ---------------------------- |
| 1.15.0  | version initiale             |
| 2.0.0   | Données entières supportées. |

<!--
## 👤 Auteur

Allan CORNET
-->
