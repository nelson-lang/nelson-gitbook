# raylfit

Estimation de l'echelle Rayleigh

## 📝 Syntaxe

- phat = raylfit(x)
- [phat, pci] = raylfit(x, alpha)
- [phat, pci] = raylfit(x, alpha, censoring, freq)

## 📥 Argument d'entrée

- x - vecteur ou matrice reel non negatif fini non vide : donnees d'echantillon.
- alpha - scalaire dans l'intervalle [0, 1] : niveau de signification. La valeur par defaut est 0.05.
- censoring - tableau contenant les valeurs 0 ou 1 : indicateurs de censure a droite.
- freq - tableau de valeurs finies non negatives : frequences des observations.

## 📤 Argument de sortie

- phat - tableau : estimations du parametre d'echelle.
- pci - tableau : intervalles de confiance des estimations.

## 📄 Description


<b>raylfit</b> estime le parametre d'echelle de la distribution Rayleigh.

## 💡 Exemple



```matlab
x = [0.5 1 2 3 5 8];
[phat, pci] = raylfit(x);
```


## 🔗 Voir aussi

[rayllike](../../statistics/2_probability_distributions/rayllike.md), [raylpdf](../../statistics/2_probability_distributions/raylpdf.md), [raylcdf](../../statistics/2_probability_distributions/raylcdf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
