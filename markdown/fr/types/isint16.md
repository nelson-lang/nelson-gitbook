# isint16

Renvoie vrai si la variable var est un tableau d'entiers signés 16 bits.

## 📝 Syntaxe

- res = isint16(var)

## 📥 Argument d'entrée

- var - une variable

## 📤 Argument de sortie

- res - un logique : vrai ou faux

## 📄 Description

<b>isint16</b> renvoie 1 logique si l'argument est un tableau d'entiers signés 16 bits et 0 logique sinon.

## 💡 Exemples

```matlab
A = 3;
res = isint16(A)
```

```matlab
B = int16(3);
res = isint16(B)
```

## 🔗 Voir aussi

[isa](../types/isa.md), [int16](../integer/int16.md), [isinteger](../types/isinteger.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
