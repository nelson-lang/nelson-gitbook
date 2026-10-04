# betarnd

Nombres aleatoires beta

## 📝 Syntaxe

- r = betarnd(a, b)
- r = betarnd(a, b, sz)
- r = betarnd(a, b, sz1, ..., szN)

## 📥 Argument d'entrée

- a - scalaire positif ou tableau : premier parametre de forme.
- b - scalaire positif ou tableau : second parametre de forme.
- sz - scalaire, vecteur ou dimensions separees par des virgules : taille de la sortie.

## 📤 Argument de sortie

- r - tableau : valeurs aleatoires.

## 📄 Description

<b>betarnd</b> genere des valeurs aleatoires de loi beta.

## 💡 Exemple

```matlab
rng(0);
r = betarnd(2, 5, 2, 3);
```

## 🔗 Voir aussi

[betapdf](../../statistics/betapdf.md), [betacdf](../../statistics/betacdf.md), [betainv](../../statistics/betainv.md), [betastat](../../statistics/betastat.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
