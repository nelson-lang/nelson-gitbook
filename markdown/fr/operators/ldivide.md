# ldivide

Division gauche, opérateur .\\

## 📝 Syntaxe

- C = ldivide(A, B)
- C = A .\\ B

## 📥 Argument d'entrée

- A - une variable
- B - une variable

## 📤 Argument de sortie

- C - résultat de A .\\ B

## 📄 Description

<b>C = ldivide(A, B)</b> retourne la division élément par élément A .\\ B.

## 💡 Exemples

```matlab
B = ones(3, 4)
A = B *2
A .\ B
```

```matlab
B = 2
A = B *2
A .\ B
```

## 🔗 Voir aussi

[rdivide](../operators/rdivide.md), [mldivide](../operators/mldivide.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
