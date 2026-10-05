# lognlike

Log-vraisemblance negative lognormale

## 📝 Syntaxe

- nlogL = lognlike(params, x)
- [nlogL, avar] = lognlike(params, x, censoring, freq)

## 📥 Argument d'entrée

- params - vecteur a deux elements : parametres mu et sigma.
- x - tableau reel positif fini non vide : donnees d'echantillon.
- censoring - tableau contenant les valeurs 0 ou 1 : indicateurs de censure a droite.
- freq - tableau de valeurs finies non negatives : frequences des observations.

## 📤 Argument de sortie

- nlogL - scalaire : log-vraisemblance negative.
- avar - tableau 2 par 2 : matrice de covariance approchee.

## 📄 Description


<b>lognlike</b> evalue la log-vraisemblance negative de la distribution lognormale.

## 💡 Exemple



```matlab
x = [0.5 1 2 3 5 8];
phat = lognfit(x);
nlogL = lognlike(phat, x);
```


## 🔗 Voir aussi

[lognfit](../../statistics/2_probability_distributions/lognfit.md), [lognpdf](../../statistics/2_probability_distributions/lognpdf.md), [logncdf](../../statistics/2_probability_distributions/logncdf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
