# mustBePositive

Vérifie que la valeur est positive ou renvoie une erreur.

## 📝 Syntaxe

- mustBePositive(var)
- mustBePositive(var, argPosition)
- C++: void mustBePositive(const ArrayOfVector& args, int argPosition)

## 📥 Argument d'entrée

- var - a variable: all supported types and classes that implement isnumeric, islogical, all, isreal, and gt methods.
- argPosition - a positive integer value: Position of input argument.

## 📄 Description

<b>mustBePositive</b> vérifie que la valeur est positive ou renvoie une erreur.

## 💡 Exemple

```matlab
mustBePositive(1)
mustBePositive(-1)
```

## 🔗 Voir aussi

[mustBeNonnegative](../validators/mustBeNonnegative.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
