# mustBeNegative

Vérifie que la valeur est négative ou renvoie une erreur.

## 📝 Syntaxe

- mustBeNegative(var)
- mustBeNegative(var, argPosition)
- C++: void mustBeNegative(const ArrayOfVector& args, int argPosition)

## 📥 Argument d'entrée

- var - une variable : tous les types et classes pris en charge qui implémentent isnumeric, islogical, all, isreal et la méthode lt (<).
- argPosition - un entier positif : position de l'argument d'entrée.

## 📄 Description

<b>mustBeNegative</b> vérifie que la valeur est négative ou renvoie une erreur.

## 💡 Exemple

```matlab
mustBeNegative(-1)
mustBeNegative(1)
```

## 🔗 Voir aussi

[mustBePositive](../validators/mustBePositive.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
