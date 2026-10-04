# evinv

Inverse de la fonction de repartition de la loi extreme value

## 📝 Syntaxe

- x = evinv(p)
- x = evinv(p, mu)
- x = evinv(p, mu, sigma)

## 📥 Argument d'entrée

- p - scalaire ou tableau : probabilites.
- mu - scalaire ou tableau reel : parametre de position. La valeur par defaut est 0.
- sigma - scalaire ou tableau positif : parametre d'echelle. La valeur par defaut est 1.

## 📤 Argument de sortie

- x - tableau : valeurs inverses.

## 📄 Description

<b>evinv</b> evalue element par element l'inverse de la fonction de repartition de la loi extreme value.

## 💡 Exemple

```matlab
p = [0.1 0.5 0.9];
x = evinv(p, 0, 1);
```

## 🔗 Voir aussi

[evpdf](../../statistics/evpdf.md), [evcdf](../../statistics/evcdf.md), [evrnd](../../statistics/evrnd.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
