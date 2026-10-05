# betafit

Estimation des parametres beta

## 📝 Syntaxe

- phat = betafit(x)
- [phat, pci] = betafit(x, alpha)

## 📥 Argument d'entrée

- x - vecteur ou matrice reel non vide de valeurs finies dans l'intervalle ouvert (0, 1) : donnees observees.
- alpha - scalaire dans l'intervalle [0, 1] : niveau de signification. La valeur par defaut est 0.05.

## 📤 Argument de sortie

- phat - tableau : estimations des parametres de forme de la loi beta.
- pci - tableau : intervalles de confiance des estimations.

## 📄 Description


<b>betafit</b> estime les deux parametres de forme de la loi beta.

## 💡 Exemple



```matlab
x = [0.12 0.2 0.35 0.5 0.7 0.85];
[phat, pci] = betafit(x);
```


## 🔗 Voir aussi

[betalike](../../statistics/2_probability_distributions/betalike.md), [betapdf](../../statistics/2_probability_distributions/betapdf.md), [betacdf](../../statistics/2_probability_distributions/betacdf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
