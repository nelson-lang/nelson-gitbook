# lognrnd

Nombres aleatoires lognormaux

## 📝 Syntaxe

- r = lognrnd(mu, sigma)
- r = lognrnd(mu, sigma, sz)
- r = lognrnd(mu, sigma, sz1, ..., szN)

## 📥 Argument d'entrée

- mu - scalaire reel ou tableau : moyenne des valeurs logarithmiques.
- sigma - scalaire non negatif ou tableau : ecart-type des valeurs logarithmiques.
- sz - vecteur de taille ou scalaires de taille pour la sortie.

## 📤 Argument de sortie

- r - tableau : valeurs aleatoires.

## 📄 Description

<b>lognrnd</b> genere des nombres aleatoires lognormaux avec le generateur global de Nelson.

Les parametres scalaires sont etendus a la taille demandee. Les ecarts-types negatifs produisent des valeurs NaN.

## 💡 Exemple

```matlab
rng(0);
r = lognrnd(0, 1, [2 3]);
```

## 🔗 Voir aussi

[lognpdf](../../statistics/lognpdf.md), [lognstat](../../statistics/lognstat.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
