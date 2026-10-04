# binornd

Nombres aleatoires binomiaux

## 📝 Syntaxe

- r = binornd(n, p)
- r = binornd(n, p, sz)
- r = binornd(n, p, sz1, ..., szN)

## 📥 Argument d'entrée

- n - scalaire entier positif ou nul ou tableau : nombre d'essais.
- p - scalaire ou tableau dans l'intervalle [0, 1] : probabilite.
- sz - scalaire, vecteur ou dimensions separees par des virgules : taille de la sortie.

## 📤 Argument de sortie

- r - tableau : valeurs aleatoires.

## 📄 Description

<b>binornd</b> genere des valeurs aleatoires de loi binomiale.

## 💡 Exemple

```matlab
rng(0);
r = binornd(10, 0.3, 2, 3);
```

## 🔗 Voir aussi

[binopdf](../../statistics/binopdf.md), [binocdf](../../statistics/binocdf.md), [binoinv](../../statistics/binoinv.md), [binostat](../../statistics/binostat.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
