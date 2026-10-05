# lognstat

Moyenne et variance lognormales

## 📝 Syntaxe

- [m, v] = lognstat(mu, sigma)

## 📥 Argument d'entrée

- mu - scalaire reel ou tableau : moyenne des valeurs logarithmiques.
- sigma - scalaire non negatif ou tableau : ecart-type des valeurs logarithmiques.

## 📤 Argument de sortie

- m - tableau : moyennes.
- v - tableau : variances.

## 📄 Description


<b>lognstat</b> renvoie la moyenne et la variance element par element de lois lognormales.

## 💡 Exemple



```matlab
[m, v] = lognstat(0, 1);
```


## 🔗 Voir aussi

[lognpdf](../../statistics/2_probability_distributions/lognpdf.md), [lognrnd](../../statistics/2_probability_distributions/lognrnd.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
