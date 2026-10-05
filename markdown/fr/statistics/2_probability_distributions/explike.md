# explike

Oppose de la log-vraisemblance exponentielle

## 📝 Syntaxe

- nlogL = explike(mu, x)
- [nlogL, avar] = explike(mu, x)
- [nlogL, avar] = explike(mu, x, censoring, freq)

## 📥 Argument d'entrée

- mu - scalaire positif : parametre de moyenne exponentielle.
- x - tableau reel non vide de valeurs finies positives ou nulles : donnees observees.
- censoring - tableau contenant des valeurs 0 ou 1 : indicateurs de censure a droite.
- freq - tableau de valeurs finies positives ou nulles : frequences d'observation.

## 📤 Argument de sortie

- nlogL - scalaire : oppose de la log-vraisemblance.
- avar - scalaire : estimation de variance asymptotique.

## 📄 Description


<b>explike</b> retourne l'oppose de la log-vraisemblance pour des donnees de loi exponentielle et l'estimation de variance asymptotique.

## 💡 Exemple



```matlab
x = [0.5 1 2 3 5 8];
[nlogL, avar] = explike(3.25, x);
```


## 🔗 Voir aussi

[expfit](../../statistics/2_probability_distributions/expfit.md), [exppdf](../../statistics/2_probability_distributions/exppdf.md), [expcdf](../../statistics/2_probability_distributions/expcdf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
