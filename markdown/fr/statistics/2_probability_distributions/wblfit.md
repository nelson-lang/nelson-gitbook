# wblfit

Estimation des parametres de la loi Weibull

## 📝 Syntaxe

- phat = wblfit(x)
- [phat, pci] = wblfit(x, alpha)
- [phat, pci] = wblfit(x, alpha, censoring, freq)
- [phat, pci] = wblfit(x, alpha, censoring, freq, options)

## 📥 Argument d'entrée

- x - vecteur ou matrice reel positif fini non vide : donnees d'echantillon.
- alpha - scalaire dans l'intervalle [0, 1] : niveau de signification. La valeur par defaut est 0.05.
- censoring - tableau contenant des valeurs 0 ou 1 : indicateurs de censure a droite.
- freq - tableau de valeurs finies non negatives : frequences d'observation.
- options - structure scalaire : options d'ajustement. MaxIter et TolX sont utilises si fournis.

## 📤 Argument de sortie

- phat - tableau : estimations des parametres d'echelle et de forme.
- pci - tableau : intervalles de confiance des estimations.

## 📄 Description


<b>wblfit</b> estime les parametres de la loi Weibull.

## 💡 Exemple



```matlab
x = [0.5 1 2 3 5 8];
[phat, pci] = wblfit(x);
```


## 🔗 Voir aussi

[wbllike](../../statistics/2_probability_distributions/wbllike.md), [wblpdf](../../statistics/2_probability_distributions/wblpdf.md), [wblcdf](../../statistics/2_probability_distributions/wblcdf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
