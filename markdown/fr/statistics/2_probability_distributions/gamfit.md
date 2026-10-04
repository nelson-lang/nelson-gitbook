# gamfit

Estimations des parametres gamma

## 📝 Syntaxe

- phat = gamfit(x)
- [phat, pci] = gamfit(x, alpha)
- [phat, pci] = gamfit(x, alpha, censoring, freq)
- [phat, pci] = gamfit(x, alpha, censoring, freq, options)

## 📥 Argument d'entrée

- x - vecteur ou matrice reel positif fini non vide : donnees d'echantillon.
- alpha - scalaire dans l'intervalle [0, 1] : niveau de signification. La valeur par defaut est 0.05.
- censoring - tableau contenant les valeurs 0 ou 1 : indicateurs de censure a droite.
- freq - tableau de valeurs finies non negatives : frequences des observations.
- options - structure scalaire : options d'ajustement. MaxIter et TolX sont utilises s'ils sont fournis.

## 📤 Argument de sortie

- phat - tableau : estimations des parametres de forme et d'echelle.
- pci - tableau : intervalles de confiance des estimations.

## 📄 Description

<b>gamfit</b> estime les parametres de la distribution gamma.

## 💡 Exemple

```matlab
x = [0.5 1 2 3 5 8];
[phat, pci] = gamfit(x);
```

## 🔗 Voir aussi

[gamlike](../../statistics/gamlike.md), [gampdf](../../statistics/gampdf.md), [gamcdf](../../statistics/gamcdf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
