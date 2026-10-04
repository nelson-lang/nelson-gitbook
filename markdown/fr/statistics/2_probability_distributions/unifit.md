# unifit

Estimations des parametres uniformes continus

## 📝 Syntaxe

- [aHat, bHat] = unifit(x)
- [aHat, bHat, aCI, bCI] = unifit(x)
- [aHat, bHat, aCI, bCI] = unifit(x, alpha)

## 📥 Argument d'entrée

- x - vecteur ou matrice reel : donnees echantillon.
- alpha - scalaire dans [0, 1] : niveau de signification. La valeur par defaut est 0.05.

## 📤 Argument de sortie

- aHat - vecteur ligne : estimations des bornes inferieures.
- bHat - vecteur ligne : estimations des bornes superieures.
- aCI - tableau 2 par n : intervalles de confiance pour les bornes inferieures.
- bCI - tableau 2 par n : intervalles de confiance pour les bornes superieures.

## 📄 Description

<b>unifit</b> renvoie les estimations du maximum de vraisemblance pour les parametres de bornes uniformes continues.

Les vecteurs sont traites comme un seul echantillon. Les matrices sont traitees colonne par colonne.

## 💡 Exemple

```matlab
x = [2 5 3 4];
[aHat, bHat, aCI, bCI] = unifit(x);
[aHat2, bHat2] = unifit([1 2; 3 4; 4 9]);
```

## 🔗 Voir aussi

[uniflike](../../statistics/uniflike.md), [unifpdf](../../statistics/unifpdf.md), [unifcdf](../../statistics/unifcdf.md), [unifinv](../../statistics/unifinv.md), [unifstat](../../statistics/unifstat.md), [unifrnd](../../statistics/unifrnd.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
