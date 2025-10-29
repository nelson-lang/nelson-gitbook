# mustBeNonnegative

Checks that value is nonnegative or raise an error.

## 📝 Syntaxe

- mustBeNonnegative(var)
- mustBeNonnegative(var, argPosition)
- C++: void mustBeNonnegative(const ArrayOfVector& args, int argPosition)

## 📥 Argument d'entrée

- var - une variable : tous les types et classes pris en charge qui implémentent isnumeric, islogical, all, isreal et la méthode ge (>=).
- argPosition - a positive integer value: Position of input argument.

## 📄 Description

<b>mustBeNonnegative</b> vérifie que la valeur est non négative ou renvoie une erreur.

## 💡 Exemple

```matlab
mustBeNonnegative(1)
mustBeNonnegative(-1)
```

## 🔗 Voir aussi

[mustBePositive](../validators/mustBePositive.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
