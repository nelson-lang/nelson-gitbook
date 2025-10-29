# isstruct

Renvoie vrai si la variable var est une structure.

## 📝 Syntaxe

- res = isstruct(var)

## 📥 Argument d'entrée

- var - une variable

## 📤 Argument de sortie

- res - un logique : vrai ou faux

## 📄 Description

<b>isstruct</b> renvoie 1 logique (vrai) si l'argument est une struct (structure) et 0 logique (faux) sinon.

## 💡 Exemples

```matlab
A = 1;
res = isstruct(A)
```

```matlab
B = struct();
res = isstruct(B)
```

```matlab
C.a = 1;
C.B = 'hello';
res = isstruct(C)
```

## 🔗 Voir aussi

[isa](../types/isa.md), [struct](../integer/struct.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
