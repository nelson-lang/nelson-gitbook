# raylrnd

Nombres aleatoires Rayleigh

## 📝 Syntaxe

- r = raylrnd(b)
- r = raylrnd(b, sz)
- r = raylrnd(b, sz1, ..., szN)

## 📥 Argument d'entrée

- b - scalaire positif ou tableau : parametre d'echelle.
- sz - vecteur de taille ou scalaires de taille pour la sortie.

## 📤 Argument de sortie

- r - tableau : valeurs aleatoires.

## 📄 Description

<b>raylrnd</b> genere des nombres aleatoires Rayleigh avec le generateur global de Nelson.

## 💡 Exemple

```matlab
rng(0);
r = raylrnd(2, [2 3]);
```

## 🔗 Voir aussi

[raylpdf](../../statistics/raylpdf.md), [raylstat](../../statistics/raylstat.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
