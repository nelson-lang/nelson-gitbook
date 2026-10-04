# uniflike

Oppose de la log-vraisemblance uniforme continue

## 📝 Syntaxe

- nlogL = uniflike(params, x)
- [nlogL, avar] = uniflike(params, x, censoring, freq)

## 📥 Argument d'entrée

- params - vecteur a deux elements contenant les bornes inferieure et superieure.
- x - tableau reel non vide : donnees echantillon.
- censoring - tableau contenant les valeurs 0 ou 1. La valeur par defaut est un tableau de zeros.
- freq - tableau fini positif ou nul de frequences d'observation. La valeur par defaut est un tableau de uns.

## 📤 Argument de sortie

- nlogL - scalaire : oppose de la log-vraisemblance.
- avar - matrice : estimation de covariance asymptotique.

## 📄 Description

<b>uniflike</b> retourne l'oppose de la log-vraisemblance pour des donnees de loi uniforme continue.

## 💡 Exemple

```matlab
x = [2 5 3 4];
[nlogL, avar] = uniflike([1 6], x);
```

## 🔗 Voir aussi

[unifit](../../statistics/unifit.md), [unifpdf](../../statistics/unifpdf.md), [unifcdf](../../statistics/unifcdf.md), [unifrnd](../../statistics/unifrnd.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
