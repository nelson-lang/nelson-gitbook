# evfit

Estimation des parametres de la loi extreme value

## 📝 Syntaxe

- phat = evfit(x)
- [phat, pci] = evfit(x, alpha)
- [phat, pci] = evfit(x, alpha, censoring, freq)
- [phat, pci] = evfit(x, alpha, censoring, freq, options)

## 📥 Argument d'entrée

- x - vecteur ou matrice reel non vide : donnees d'echantillon.
- alpha - scalaire dans l'intervalle [0, 1] : niveau de signification. La valeur par defaut est 0.05.
- censoring - tableau contenant des valeurs 0 ou 1 : indicateurs de censure a droite.
- freq - tableau de valeurs finies non negatives : frequences d'observation.
- options - structure scalaire : options acceptees pour compatibilite.

## 📤 Argument de sortie

- phat - tableau : estimations des parametres de position et d'echelle.
- pci - tableau : intervalles de confiance des estimations.

## 📄 Description

<b>evfit</b> estime les parametres de la loi extreme value.

## 💡 Exemple

```matlab
x = [-2 -1 0 1 2 3];
[phat, pci] = evfit(x);
```

## 🔗 Voir aussi

[evlike](../../statistics/evlike.md), [evpdf](../../statistics/evpdf.md), [evcdf](../../statistics/evcdf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
