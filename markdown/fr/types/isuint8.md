# isuint8

Renvoie vrai si la variable var est un tableau d'entiers non signés 8 bits.

## 📝 Syntaxe

- res = isuint8(var)

## 📥 Argument d'entrée

- var - une variable

## 📤 Argument de sortie

- res - un logique : vrai ou faux

## 📄 Description

<b>isuint8</b> renvoie 1 logique si l'argument est un tableau d'entiers non signés 8 bits et 0 logique sinon.

## 💡 Exemples

```matlab
A = 3;
res = isuint8(A)
```

```matlab
B = uint8(3);
res = isuint8(B)
```

## 🔗 Voir aussi

[isa](../types/isa.md), [uint8](../integer/uint8.md), [isinteger](../types/isinteger.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
