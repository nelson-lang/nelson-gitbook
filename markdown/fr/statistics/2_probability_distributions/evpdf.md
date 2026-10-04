# evpdf

Fonction de densite de la loi extreme value

## 📝 Syntaxe

- y = evpdf(x)
- y = evpdf(x, mu)
- y = evpdf(x, mu, sigma)

## 📥 Argument d'entrée

- x - scalaire ou tableau reel : valeurs.
- mu - scalaire ou tableau reel : parametre de position. La valeur par defaut est 0.
- sigma - scalaire ou tableau positif : parametre d'echelle. La valeur par defaut est 1.

## 📤 Argument de sortie

- y - tableau : valeurs de densite.

## 📄 Description

<b>evpdf</b> evalue element par element la densite de la loi extreme value.

## 💡 Exemple

```matlab
x = [-2 -1 0 1 2];
y = evpdf(x, 0, 1);
```

## 🔗 Voir aussi

[evcdf](../../statistics/evcdf.md), [evinv](../../statistics/evinv.md), [evrnd](../../statistics/evrnd.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
