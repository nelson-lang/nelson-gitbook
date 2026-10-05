# binornd

Nombres aleatoires binomiaux

## 📝 Syntaxe

- r = binornd(n, p)
- r = binornd(n, p, sz)
- r = binornd(n, p, sz1, ..., szN)

## 📥 Argument d'entrée

- n - scalaire entier positif ou nul ou tableau : nombre d'essais.
- p - scalaire ou tableau dans l'intervalle [0, 1] : probabilite.
- sz - scalaire, vecteur ou dimensions separees par des virgules : taille de la sortie.

## 📤 Argument de sortie

- r - tableau : valeurs aleatoires.

## 📄 Description


<b>binornd</b> genere des valeurs aleatoires de loi binomiale.

## 💡 Exemple



```matlab
rng(0);
r = binornd(10, 0.3, 2, 3);
```


## 🔗 Voir aussi

[binopdf](../../statistics/2_probability_distributions/binopdf.md), [binocdf](../../statistics/2_probability_distributions/binocdf.md), [binoinv](../../statistics/2_probability_distributions/binoinv.md), [binostat](../../statistics/2_probability_distributions/binostat.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
