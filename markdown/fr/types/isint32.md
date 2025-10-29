# isint32

Renvoie vrai si la variable var est un tableau d'entiers signés 32 bits.

## 📝 Syntaxe

- res = isint32(var)

## 📥 Argument d'entrée

- var - une variable

## 📤 Argument de sortie

- res - un logique : vrai ou faux

## 📄 Description

<b>isint32</b> renvoie 1 logique si l'argument est un tableau d'entiers signés 32 bits et 0 logique sinon.

## 💡 Exemples

```matlab
A = 3;
res = isint32(A)
```

```matlab
B = int32(3);
res = isint32(B)
```

## 🔗 Voir aussi

[isa](../types/isa.md), [int32](../integer/int32.md), [isinteger](../types/isinteger.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
