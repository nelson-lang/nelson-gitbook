# poissrnd

Nombres aleatoires de Poisson

## 📝 Syntaxe

- r = poissrnd(lambda)
- r = poissrnd(lambda, sz)
- r = poissrnd(lambda, sz1, ..., szN)

## 📥 Argument d'entrée

- lambda - scalaire positif ou nul ou tableau : parametre de taux.
- sz - scalaire, vecteur ou dimensions separees par des virgules : taille de la sortie.

## 📤 Argument de sortie

- r - tableau : valeurs aleatoires.

## 📄 Description

<b>poissrnd</b> genere des valeurs aleatoires de loi de Poisson.

## 💡 Exemple

```matlab
rng(0);
r = poissrnd(4, 2, 3);
```

## 🔗 Voir aussi

[poisspdf](../../statistics/poisspdf.md), [poisscdf](../../statistics/poisscdf.md), [poissinv](../../statistics/poissinv.md), [poissstat](../../statistics/poissstat.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
