# mustBeLogicalScalar

Vérifie que la valeur est un scalaire logique ou renvoie une erreur.

## 📝 Syntaxe

- mustBeLogicalScalar(var)
- mustBeLogicalScalar(var, argPosition)
- C++: void mustBeLogicalScalar(const ArrayOfVector& args, int argPosition)

## 📥 Argument d'entrée

- var - une variable : tous les types et classes pris en charge qui implémentent islogical et isscalar.
- argPosition - un entier positif : position de l'argument d'entrée.

## 📄 Description

<b>mustBeLogicalScalar</b> vérifie que la valeur est un scalaire logique ou renvoie une erreur.

## 💡 Exemple

```matlab
mustBeLogicalScalar(true)
mustBeLogicalScalar([])
mustBeLogicalScalar([true false])
```

## 🔗 Voir aussi

[isscalar](../elementary_functions/isscalar.md), [islogical](../types/islogical.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
