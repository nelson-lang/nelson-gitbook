# mustBeNonpositive

Vérifie que la valeur est non positive ou renvoie une erreur.

## 📝 Syntaxe

- mustBeNonpositive(var)
- mustBeNonpositive(var, argPosition)
- C++: void mustBeNonpositive(const ArrayOfVector& args, int argPosition)

## 📥 Argument d'entrée

- var - une variable : tous les types et classes pris en charge qui implémentent isnumeric, islogical, all, isreal et la méthode le (<=).
- argPosition - un entier positif : position de l'argument d'entrée.

## 📄 Description

<b>mustBeNonpositive</b> vérifie que la valeur est non positive ou renvoie une erreur.

## 💡 Exemple

```matlab
mustBeNonpositive(-1)
mustBeNonpositive(1)
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
