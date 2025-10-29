# mustBeNonNan

Vérifie que la valeur n'est pas NaN.

## 📝 Syntaxe

- mustBeNonNan(var)
- mustBeNonNan(var, argPosition)
- C++: void mustBeNonNan(const ArrayOfVector& args, int argPosition)

## 📥 Argument d'entrée

- var - une variable : tous les types et classes pris en charge qui implémentent la méthode isnan.
- argPosition - un entier positif : position de l'argument d'entrée.

## 📄 Description

<b>mustBeNonNan</b> vérifie que la valeur n'est pas NaN ou renvoie une erreur.

## 💡 Exemple

```matlab
mustBeNonNan(1)
mustBeNonNan([])
mustBeNonNan(NaN)

```

## 🔗 Voir aussi

[isempty](../types/isempty.md), [isnan](../elementary_functions/isnan.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
