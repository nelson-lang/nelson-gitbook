# colon

Opérateur deux-points ':'

## 📝 Syntaxe

- R = colon(base, limit)
- R = colon(base, increment, limit

## 📥 Argument d'entrée

- base - une variable
- limit - une variable
- increment - une variable (optionnelle)

## 📤 Argument de sortie

- C - résultat

## 📄 Description

<b>colon</b> crée des vecteurs. C'est une fonction utile pour les boucles, l'extraction et l'insertion.

<b>colon(base, limit)</b> est équivalent à <b>base:limit</b>

<b>colon(base, increment, limit)</b> est équivalent à <b>base:increment:limit</b>

## 💡 Exemples

```matlab
1:0.5:4
```

```matlab
A = 1:6
B = 1:4:12
C = rand(3, 4)
C(:)
C(:, 3)
C(2, :)
C(:, 1, 1)
C(:) = rand(3, 4)

```

## 🔗 Voir aussi

[subsref](../operators/subsref.md), [subsindex](../operators/subsindex.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
