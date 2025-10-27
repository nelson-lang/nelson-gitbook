# mustBeNonSparse

Vérifie que la valeur n'est pas creuse (sparse).

## 📝 Syntaxe

- mustBeNonSparse(var)
- mustBeNonSparse(var, argPosition)
- C++: void mustBeNonSparse(const ArrayOfVector& args, int argPosition)

## 📥 Argument d'entrée

- var - une variable : tous les types et classes pris en charge qui implémentent la méthode issparse.
- argPosition - un entier positif : position de l'argument d'entrée.

## 📄 Description

<b>mustBeNonSparse</b> vérifie que la valeur n'est pas creuse (sparse) ou renvoie une erreur.

## 💡 Exemple

```matlab
mustBeNonSparse(1)
mustBeNonSparse([])
mustBeNonSparse(sparse(3))

```

## 🔗 Voir aussi

[issparse](../types/issparse.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
