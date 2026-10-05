# binocdf

Fonction de repartition binomiale

## 📝 Syntaxe

- p = binocdf(x, n, prob)
- p = binocdf(x, n, prob, 'upper')

## 📥 Argument d'entrée

- x - tableau numerique reel.
- n - nombre entier non negatif d'essais.
- prob - probabilite de succes dans [0,1].

## 📤 Argument de sortie

- p - probabilites cumulees ou de queue superieure.

## 📄 Description


<b>binocdf</b> calcule par defaut les probabilites de queue inferieure binomiale et les probabilites de queue superieure avec <b>'upper'</b>.

## 💡 Exemple



```matlab
x = 0:10;
p = binocdf(x, 10, 0.4);
q = binocdf(x, 10, 0.4, 'upper');
```


## 🔗 Voir aussi

[binopdf](../../statistics/2_probability_distributions/binopdf.md), [binoinv](../../statistics/2_probability_distributions/binoinv.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
