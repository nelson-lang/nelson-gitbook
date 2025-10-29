# isint64

Renvoie vrai si la variable var est un tableau d'entiers signés 64 bits.

## 📝 Syntaxe

- res = isint64(var)

## 📥 Argument d'entrée

- var - une variable

## 📤 Argument de sortie

- res - un logique : vrai ou faux

## 📄 Description

<b>isint64</b> renvoie 1 logique si l'argument est un tableau d'entiers signés 64 bits et 0 logique sinon.

## 💡 Exemples

```matlab
A = 3;
res = isint64(A)
```

```matlab
B = int64(3);
res = isint64(B)
```

## 🔗 Voir aussi

[isa](../types/isa.md), [int64](../integer/int64.md), [isinteger](../types/isinteger.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
