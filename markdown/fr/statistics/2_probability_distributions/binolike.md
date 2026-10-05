# binolike

Oppose de la log-vraisemblance binomiale

## 📝 Syntaxe

- nlogL = binolike(p, x, n)
- [nlogL, avar] = binolike(p, x, n)

## 📥 Argument d'entrée

- p - scalaire : parametre de probabilite binomiale.
- x - tableau reel non vide d'entiers finis positifs ou nuls : succes observes.
- n - tableau ou scalaire reel non vide d'entiers finis positifs ou nuls : nombres d'essais. Chaque valeur doit etre superieure ou egale a la valeur correspondante dans x.

## 📤 Argument de sortie

- nlogL - scalaire : oppose de la log-vraisemblance.
- avar - scalaire : estimation de variance asymptotique.

## 📄 Description


<b>binolike</b> retourne l'oppose de la log-vraisemblance pour des donnees de loi binomiale et l'estimation de variance asymptotique.

## 💡 Exemple



```matlab
x = [0 2 5 8 10];
n = 10;
[nlogL, avar] = binolike(0.4, x, n);
```


## 🔗 Voir aussi

[binofit](../../statistics/2_probability_distributions/binofit.md), [binopdf](../../statistics/2_probability_distributions/binopdf.md), [binocdf](../../statistics/2_probability_distributions/binocdf.md), [binornd](../../statistics/2_probability_distributions/binornd.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
