# isfloat

Renvoie vrai si la variable var est une matrice de type single ou double.

## 📝 Syntaxe

- res = isfloat(var)

## 📥 Argument d'entrée

- var - une variable

## 📤 Argument de sortie

- res - un logique : vrai ou faux

## 📄 Description

<b>isfloat</b> renvoie 1 logique (vrai) si l'argument est une matrice en simple ou double précision et 0 logique (faux) sinon.

## 💡 Exemples

```matlab
A = 3;
res = isfloat(A)
```

```matlab
A = single(3);
res = isfloat(A)
```

## 🔗 Voir aussi

[isa](../types/isa.md), [single](../integer/single.md), [isdouble](../types/isdouble.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
