# expfit

Estimation de la moyenne exponentielle

## 📝 Syntaxe

- phat = expfit(x)
- [phat, pci] = expfit(x, alpha)
- [phat, pci] = expfit(x, alpha, censoring, freq)
- [phat, pci] = expfit(x, alpha, censoring, freq, options)

## 📥 Argument d'entrée

- x - vecteur ou matrice reel non vide de valeurs finies positives ou nulles : donnees observees.
- alpha - scalaire dans l'intervalle [0, 1] : niveau de signification. La valeur par defaut est 0.05.
- censoring - tableau contenant des valeurs 0 ou 1 : indicateurs de censure a droite.
- freq - tableau de valeurs finies positives ou nulles : frequences d'observation.
- options - structure creee par statset. MaxIter et TolX sont valides pour compatibilite.

## 📤 Argument de sortie

- phat - tableau : estimations du parametre de moyenne.
- pci - tableau : intervalles de confiance des estimations.

## 📄 Description

<b>expfit</b> estime le parametre de moyenne de la loi exponentielle.

## 💡 Exemple

```matlab
x = [0.5 1 2 3 5 8];
[phat, pci] = expfit(x);
```

## 🔗 Voir aussi

[explike](../../statistics/explike.md), [exppdf](../../statistics/exppdf.md), [expcdf](../../statistics/expcdf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
