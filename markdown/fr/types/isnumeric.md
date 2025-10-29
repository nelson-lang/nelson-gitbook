# isnumeric

Renvoie vrai si la variable var est un tableau numérique.

## 📝 Syntaxe

- res = isnumeric(var)

## 📥 Argument d'entrée

- var - une variable

## 📤 Argument de sortie

- res - un logique : vrai ou faux

## 📄 Description

<b>isnumeric</b> renvoie 1 logique si l'argument est un tableau numérique et 0 logique sinon.

Liste des types numériques :

<b>single</b> : simple précision

<b>double</b> : double précision

<b>int8</b> : entier signé 8 bits

<b>int16</b> : entier signé 16 bits

<b>int32</b> : entier signé 32 bits

<b>int64</b> : entier signé 64 bits

<b>uint8</b> : entier non signé 8 bits

<b>uint16</b> : entier non signé 16 bits

<b>uint32</b> : entier non signé 32 bits

<b>uint64</b> : entier non signé 64 bits

## 💡 Exemples

```matlab
A = 1;
res = isnumeric(A)
```

```matlab
B = single(1+i);
res = isnumeric(B)
```

```matlab
C = logical(1);
res = isnumeric(C)
```

## 🔗 Voir aussi

[islogical](../types/islogical.md), [isinteger](../types/isinteger.md), [isdouble](../types/isdouble.md), [issingle](../types/issingle.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
