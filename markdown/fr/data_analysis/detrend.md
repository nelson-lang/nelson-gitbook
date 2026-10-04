# detrend

Retire une tendance polynomiale.

## 📝 Syntaxe

- y = detrend(x)
- y = detrend(x, n)
- y = detrend(x, method)
- y = detrend(x, n, bp)

## 📥 Argument d'entrée

- x - un vecteur ou une matrice reelle. Pour une matrice, chaque colonne est traitee independamment.
- n - ordre de la tendance : 0 retire la moyenne, 1 (defaut) retire la droite de meilleur ajustement.
- method - 'constant' (equivalent a 0) ou 'linear' (equivalent a 1).
- bp - points de rupture donnes comme indices de lignes, produisant une tendance lineaire par morceaux continue.

## 📤 Argument de sortie

- y - les donnees privees de la tendance, de meme taille et classe que <b>x</b>.

## 📄 Description

<b>detrend</b> retire une tendance polynomiale de faible degre par un ajustement aux moindres carres et retourne le residu.

Par defaut la fonction retire une tendance lineaire. Avec <b>n</b> egal a 0 (ou la methode <b>'constant'</b>) elle retire seulement la moyenne. Les points de rupture produisent une tendance lineaire par morceaux continue aux indices de lignes donnes.

Une entree vecteur ligne retourne un vecteur ligne ; une entree vecteur colonne retourne un vecteur colonne.

## 💡 Exemples

```matlab
t = 0:0.1:2;
x = 3 * t + sin(t);
y = detrend(x)

```

```matlab
y = detrend([1 3 2 4 6], 'constant')

```

## 🔗 Voir aussi

[cumsum](../data_analysis/cumsum.md), [mean](../statistics/mean.md), [polyfit](../polynomial_functions/polyfit.md).

## 🕔 Historique

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
