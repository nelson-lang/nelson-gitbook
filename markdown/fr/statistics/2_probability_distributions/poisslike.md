# poisslike

Oppose de la log-vraisemblance de Poisson

## 📝 Syntaxe

- nlogL = poisslike(lambda, x)
- [nlogL, avar] = poisslike(lambda, x)

## 📥 Argument d'entrée

- lambda - scalaire positif ou nul : parametre de taux de Poisson.
- x - tableau reel non vide d'entiers finis positifs ou nuls : comptes observes.

## 📤 Argument de sortie

- nlogL - scalaire : oppose de la log-vraisemblance.
- avar - scalaire : estimation de variance asymptotique.

## 📄 Description


<b>poisslike</b> retourne l'oppose de la log-vraisemblance pour des donnees de loi de Poisson et l'estimation de variance asymptotique.

## 💡 Exemple



```matlab
x = [0 1 2 3 5 8];
[nlogL, avar] = poisslike(3, x);
```


## 🔗 Voir aussi

[poissfit](../../statistics/2_probability_distributions/poissfit.md), [poisspdf](../../statistics/2_probability_distributions/poisspdf.md), [poisscdf](../../statistics/2_probability_distributions/poisscdf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
