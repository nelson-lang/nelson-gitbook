# poissfit

Estimation du taux de Poisson

## 📝 Syntaxe

- lambdaHat = poissfit(x)
- [lambdaHat, lambdaCI] = poissfit(x, alpha)

## 📥 Argument d'entrée

- x - vecteur ou matrice reel non vide d'entiers finis positifs ou nuls : comptes observes.
- alpha - scalaire dans l'intervalle [0, 1] : niveau de signification. La valeur par defaut est 0.05.

## 📤 Argument de sortie

- lambdaHat - tableau : estimations du taux de Poisson.
- lambdaCI - tableau : intervalles de confiance des estimations.

## 📄 Description

<b>poissfit</b> estime le parametre de taux de la loi de Poisson.

## 💡 Exemple

```matlab
x = [0 1 2 3 5 8];
[lambdaHat, lambdaCI] = poissfit(x);
```

## 🔗 Voir aussi

[poisslike](../../statistics/poisslike.md), [poisspdf](../../statistics/poisspdf.md), [poisscdf](../../statistics/poisscdf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
