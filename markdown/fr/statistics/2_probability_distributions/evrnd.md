# evrnd

Nombres aleatoires de loi extreme value

## 📝 Syntaxe

- r = evrnd(mu, sigma)
- r = evrnd(mu, sigma, sz)
- r = evrnd(mu, sigma, sz1, ..., szN)

## 📥 Argument d'entrée

- mu - scalaire ou tableau reel : parametre de position.
- sigma - scalaire ou tableau positif : parametre d'echelle.
- sz - scalaire, vecteur ou dimensions separees par des virgules : taille de sortie.

## 📤 Argument de sortie

- r - tableau : valeurs aleatoires.

## 📄 Description


<b>evrnd</b> genere des valeurs aleatoires de loi extreme value.

## 💡 Exemple



```matlab
rng(0);
r = evrnd(0, 1, 2, 3);
```


## 🔗 Voir aussi

[evpdf](../../statistics/2_probability_distributions/evpdf.md), [evcdf](../../statistics/2_probability_distributions/evcdf.md), [evinv](../../statistics/2_probability_distributions/evinv.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
