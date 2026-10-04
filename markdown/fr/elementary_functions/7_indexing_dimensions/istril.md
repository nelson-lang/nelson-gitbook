# istril

Tester si une matrice est triangulaire infÃ©rieure

## 📝 Syntaxe

- tf = istril(M)

## 📥 Argument d'entrée

- M - un tableau numÃ©rique

## 📤 Argument de sortie

- tf - boolÃ©en : rÃ©sultat de 'istril'.

## 📄 Description

<b>istril</b> renvoie un scalaire boolÃ©en si la matrice est triangulaire infÃ©rieure.

## 💡 Exemple

```matlab
A = eye(3, 3);
R = istril(A)
R = istril(A(:,1))
```

## 🔗 Voir aussi

[isdiag](../../elementary_functions/7_indexing_dimensions/isdiag.md), [istriu](../../elementary_functions/istriu.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
