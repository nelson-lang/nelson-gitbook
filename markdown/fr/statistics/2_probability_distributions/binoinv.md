# binoinv

Fonction de repartition inverse binomiale

## 📝 Syntaxe

- x = binoinv(y, n, p)

## 📥 Argument d'entrée

- y - tableau numerique reel de probabilites.
- n - nombre entier non negatif d'essais.
- p - probabilite de succes dans [0,1].

## 📤 Argument de sortie

- x - plus petites valeurs entieres dont les probabilites cumulees sont au moins y.

## 📄 Description


<b>binoinv</b> calcule les probabilites inverses de queue inferieure binomiale.

## 💡 Exemple



```matlab
y = [0.025 0.5 0.975];
x = binoinv(y, 10, 0.4);
```


## 🔗 Voir aussi

[binocdf](../../statistics/2_probability_distributions/binocdf.md), [binopdf](../../statistics/2_probability_distributions/binopdf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
