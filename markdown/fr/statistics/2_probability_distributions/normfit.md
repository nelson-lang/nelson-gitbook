# normfit

Estimation de la moyenne et de l'ecart type normaux

## 📝 Syntaxe

- [muhat, sigmahat] = normfit(x)
- [muhat, sigmahat, muci, sigmaci] = normfit(x, alpha)
- [muhat, sigmahat, muci, sigmaci] = normfit(x, alpha, censoring, freq)
- [muhat, sigmahat, muci, sigmaci] = normfit(x, alpha, censoring, freq, options)

## 📥 Argument d'entrée

- x - vecteur ou matrice reel non vide de valeurs finies : donnees observees.
- alpha - scalaire dans l'intervalle [0, 1] : niveau de signification. La valeur par defaut est 0.05.
- censoring - tableau contenant des valeurs 0 ou 1 : indicateurs de censure a droite.
- freq - tableau de valeurs finies positives ou nulles : frequences d'observation.
- options - structure creee par statset. MaxIter et TolX controlent l'optimisation avec donnees censurees.

## 📤 Argument de sortie

- muhat - tableau : estimations de moyenne.
- sigmahat - tableau : estimations d'ecart type.
- muci - tableau : intervalles de confiance des estimations de moyenne.
- sigmaci - tableau : intervalles de confiance des estimations d'ecart type.

## 📄 Description

<b>normfit</b> estime les parametres de moyenne et d'ecart type de la loi normale.

## 💡 Exemple

```matlab
x = [-2 -1 0 1 3 5];
[muhat, sigmahat] = normfit(x);
```

## 🔗 Voir aussi

[normlike](../../statistics/normlike.md), [normpdf](../../statistics/normpdf.md), [normcdf](../../statistics/normcdf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
