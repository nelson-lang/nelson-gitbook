# isuint16

Renvoie vrai si la variable var est un tableau d'entiers non signés 16 bits.

## 📝 Syntaxe

- res = isuint16(var)

## 📥 Argument d'entrée

- var - une variable

## 📤 Argument de sortie

- res - un logique : vrai ou faux

## 📄 Description

<b>isuint16</b> renvoie 1 logique si l'argument est un tableau d'entiers non signés 16 bits et 0 logique sinon.

## 💡 Exemples

```matlab
A = 3;
res = isuint16(A)
```

```matlab
B = uint16(3);
res = isuint16(B)
```

## 🔗 Voir aussi

[isa](../types/isa.md), [uint16](../integer/uint16.md), [isinteger](../types/isinteger.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
