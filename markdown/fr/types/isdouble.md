# isdouble

Renvoie vrai si la variable var est une matrice de type double.

## 📝 Syntaxe

- res = isdouble(var)

## 📥 Argument d'entrée

- var - une variable

## 📤 Argument de sortie

- res - un logique : vrai ou faux

## 📄 Description

<b>isdouble</b> renvoie 1 logique (vrai) si l'argument est une matrice de type double et 0 logique (faux) sinon.

## 💡 Exemples

```matlab
A = 3;
res = isdouble(A)
```

```matlab
A = single(3);
res = isdouble(A)
```

```matlab
A = single([3, i]);
res = isdouble(A)
```

```matlab
A = [3, i];
res = isdouble(A)
```

## 🔗 Voir aussi

[isa](../types/isa.md), [single](../integer/single.md), [double](../integer/double.md), [isfloat](../types/isfloat.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
