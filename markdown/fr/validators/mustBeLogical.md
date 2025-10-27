# mustBeLogical

Vérifie que la valeur est logique ou renvoie une erreur.

## 📝 Syntaxe

- mustBeLogical(var)
- mustBeLogical(var, argPosition)
- C++: void mustBeLogical(const ArrayOfVector& args, int argPosition)

## 📥 Argument d'entrée

- var - une variable : tous les types et classes pris en charge qui implémentent islogical et isempty.
- argPosition - un entier positif : position de l'argument d'entrée.

## 📄 Description

<b>mustBeLogical</b> vérifie que la valeur est logique ou renvoie une erreur.

Les valeurs vides sont ignorées.

## 💡 Exemple

```matlab
mustBeLogical(true)
mustBeLogical([])
mustBeLogical([true false])
```

## 🔗 Voir aussi

[isempty](../elementary_functions/isempty.md), [islogical](../types/islogical.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
