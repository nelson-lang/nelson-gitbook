# gamrnd

Nombres aleatoires gamma

## 📝 Syntaxe

- r = gamrnd(a, b)
- r = gamrnd(a, b, sz)
- r = gamrnd(a, b, sz1, ..., szN)

## 📥 Argument d'entrée

- a - scalaire positif ou tableau : parametre de forme.
- b - scalaire positif ou tableau : parametre d'echelle.
- sz - scalaire, vecteur ou dimensions separees par des virgules : taille de la sortie.

## 📤 Argument de sortie

- r - tableau : valeurs aleatoires.

## 📄 Description


<b>gamrnd</b> genere des valeurs aleatoires de loi gamma.

## 💡 Exemple



```matlab
rng(0);
r = gamrnd(2, 3, 2, 3);
```


## 🔗 Voir aussi

[gampdf](../../statistics/2_probability_distributions/gampdf.md), [gamcdf](../../statistics/2_probability_distributions/gamcdf.md), [gaminv](../../statistics/2_probability_distributions/gaminv.md), [gamstat](../../statistics/2_probability_distributions/gamstat.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
