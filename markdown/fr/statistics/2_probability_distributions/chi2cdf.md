# chi2cdf

Fonction de repartition chi-square

## 📝 Syntaxe

- p = chi2cdf(x, v)
- p = chi2cdf(x, v, 'upper')

## 📥 Argument d'entrée

- x - tableau numerique reel : valeurs ou la distribution est evaluee.
- v - tableau numerique reel positif ou scalaire : degres de liberte.

## 📤 Argument de sortie

- p - probabilites cumulees ou probabilites de queue superieure.

## 📄 Description


<b>chi2cdf</b> calcule les probabilites chi-square de queue inferieure par defaut et de queue superieure avec <b>'upper'</b>.

## 💡 Exemple



```matlab
x = [0.5 1 2 5];
p = chi2cdf(x, 4);
q = chi2cdf(x, 4, 'upper');
```


## 🔗 Voir aussi

[chi2pdf](../../statistics/2_probability_distributions/chi2pdf.md), [chi2inv](../../statistics/2_probability_distributions/chi2inv.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
