# isuint64

Renvoie vrai si la variable var est un tableau d'entiers non signés 64 bits.

## 📝 Syntaxe

- res = isuint64(var)

## 📥 Argument d'entrée

- var - une variable

## 📤 Argument de sortie

- res - un logique : vrai ou faux

## 📄 Description

<b>isuint64</b> renvoie 1 logique si l'argument est un tableau d'entiers non signés 64 bits et 0 logique sinon.

## 💡 Exemples

```matlab
A = 3;
res = isuint64(A)
```

```matlab
B = uint64(3);
res = isuint64(B)
```

## 🔗 Voir aussi

[isa](../types/isa.md), [uint64](../integer/uint64.md), [isinteger](../types/isinteger.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
