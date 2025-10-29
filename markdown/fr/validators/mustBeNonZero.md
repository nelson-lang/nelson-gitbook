# mustBeNonZero

Vérifie que la valeur n'est pas zéro.

## 📝 Syntaxe

- mustBeNonZero(var)
- mustBeNonZero(var, argPosition)
- C++: void mustBeNonZero(const ArrayOfVector& args, int argPosition)

## 📥 Argument d'entrée

- var - une variable : tous les types et classes pris en charge qui implémentent eq, isnumeric et islogical.
- argPosition - a positive integer value: Position of input argument.

## 📄 Description

<b>mustBeNonZero</b> vérifie que la valeur n'est pas zéro ou renvoie une erreur.

## 💡 Exemple

```matlab
mustBeNonZero(1)
mustBeNonZero([])
mustBeNonZero(NaN)
mustBeNonZero(0)

```

## 🔗 Voir aussi

[isempty](../types/isempty.md), [eq](../elementary_functions/eq.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
