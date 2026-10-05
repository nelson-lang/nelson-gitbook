# evstat

Moyenne et variance de la loi extreme value

## 📝 Syntaxe

- [m, v] = evstat(mu, sigma)

## 📥 Argument d'entrée

- mu - scalaire ou tableau reel : parametre de position.
- sigma - scalaire ou tableau positif : parametre d'echelle.

## 📤 Argument de sortie

- m - tableau : valeurs de moyenne.
- v - tableau : valeurs de variance.

## 📄 Description


<b>evstat</b> retourne la moyenne et la variance de la loi extreme value.

## 💡 Exemple



```matlab
[m, v] = evstat(0, 1);
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
