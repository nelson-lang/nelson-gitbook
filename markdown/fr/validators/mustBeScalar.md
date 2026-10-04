# mustBeScalar

Verifie que la valeur est un scalaire, sinon renvoie une erreur.

## 📝 Syntaxe

- mustBeScalar(var)
- mustBeScalar(var, argPosition)
- C++: void mustBeScalar(const ArrayOfVector& args, int argPosition)

## 📥 Argument d'entrée

- var - une variable : tous les types et classes pris en charge qui implementent isscalar.
- argPosition - un entier positif : position de l'argument d'entree.

## 📄 Description

<b>mustBeScalar</b> verifie que la valeur est un scalaire, sinon renvoie une erreur.

## 💡 Exemple

```matlab
mustBeScalar(true)
mustBeScalar(zeros(0, 1))
mustBeScalar([true false])
```

## 🔗 Voir aussi

[isscalar](../elementary_functions/isscalar.md), [mustBeScalarOrEmpty](../validators/mustBeScalarOrEmpty.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.15.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
