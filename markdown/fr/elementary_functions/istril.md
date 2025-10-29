# istril

Tester si une matrice est triangulaire inférieure

## 📝 Syntaxe

- tf = istril(M)

## 📥 Argument d'entrée

- M - un tableau numérique

## 📤 Argument de sortie

- tf - booléen : résultat de 'istril'.

## 📄 Description

<b>istril</b> renvoie un scalaire booléen si la matrice est triangulaire inférieure.

## 💡 Exemple

```matlab
A = eye(3, 3);
R = istril(A)
R = istril(A(:,1))
```

## 🔗 Voir aussi

[isdiag](../elementary_functions/isdiag.md), [istriu](../elementary_functions/istriu.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
