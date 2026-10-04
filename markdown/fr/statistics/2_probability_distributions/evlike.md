# evlike

Oppose de la log-vraisemblance de la loi extreme value

## 📝 Syntaxe

- nlogL = evlike(params, x)
- [nlogL, avar] = evlike(params, x, censoring, freq)

## 📥 Argument d'entrée

- params - vecteur a deux elements : parametres de position et d'echelle.
- x - tableau reel non vide : donnees d'echantillon.
- censoring - tableau contenant des valeurs 0 ou 1 : indicateurs de censure a droite.
- freq - tableau de valeurs finies non negatives : frequences d'observation.

## 📤 Argument de sortie

- nlogL - scalaire : oppose de la log-vraisemblance.
- avar - tableau 2-par-2 : matrice de covariance approchee.

## 📄 Description

<b>evlike</b> evalue l'oppose de la log-vraisemblance de la loi extreme value.

## 💡 Exemple

```matlab
x = [-2 -1 0 1 2 3];
phat = evfit(x);
nlogL = evlike(phat, x);
```

## 🔗 Voir aussi

[evfit](../../statistics/evfit.md), [evpdf](../../statistics/evpdf.md), [evcdf](../../statistics/evcdf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
