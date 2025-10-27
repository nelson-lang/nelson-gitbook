# mustBeScalarOrEmpty

Vérifie que la valeur est scalaire ou vide, sinon renvoie une erreur.

## 📝 Syntaxe

- mustBeScalarOrEmpty(var)
- mustBeScalarOrEmpty(var, argPosition)
- C++: void mustBeScalarOrEmpty(const ArrayOfVector& args, int argPosition)

## 📥 Argument d'entrée

- var - une variable : tous les types et classes pris en charge qui implémentent isscalar et isempty.
- argPosition - a positive integer value: Position of input argument.

## 📄 Description

<b>mustBeScalarOrEmpty</b> vérifie que la valeur est scalaire ou vide, sinon renvoie une erreur.

## 💡 Exemple

```matlab
mustBeScalarOrEmpty(true)
mustBeScalarOrEmpty([])
mustBeScalarOrEmpty([true false])

```

## 🔗 Voir aussi

[isempty](../elementary_functions/isempty.md), [islogical](../types/islogical.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
