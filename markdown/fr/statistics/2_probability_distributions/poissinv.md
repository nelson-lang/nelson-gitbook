# poissinv

Fonction de repartition inverse de Poisson

## 📝 Syntaxe

- x = poissinv(y, lambda)

## 📥 Argument d'entrée

- y - tableau numerique reel de probabilites.
- lambda - parametre de taux non negatif.

## 📤 Argument de sortie

- x - plus petites valeurs entieres dont les probabilites cumulees sont au moins y.

## 📄 Description


<b>poissinv</b> calcule les probabilites inverses de queue inferieure de Poisson.

## 💡 Exemple



```matlab
y = [0.025 0.5 0.975];
x = poissinv(y, 4);
```


## 🔗 Voir aussi

[poisscdf](../../statistics/2_probability_distributions/poisscdf.md), [poisspdf](../../statistics/2_probability_distributions/poisspdf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
