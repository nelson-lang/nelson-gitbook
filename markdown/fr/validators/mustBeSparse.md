# mustBeSparse

Vérifie que la valeur est une matrice creuse (sparse) ou renvoie une erreur.

## 📝 Syntaxe

- mustBeSparse(var)
- mustBeSparse(var, argPosition)
- C++: void mustBeSparse(const ArrayOfVector& args, int argPosition)

## 📥 Argument d'entrée

- var - une variable : tous les types et classes pris en charge qui implémentent la méthode issparse.
- argPosition - a positive integer value: Position of input argument.

## 📄 Description

<b>mustBeSparse</b> vérifie que la valeur est une matrice creuse (sparse) ou renvoie une erreur.

## 💡 Exemple

```matlab
mustBeSparse(true)
mustBeSparse(eye(3, 4))
mustBeSparse(sparse(eye(3, 4)))
```

## 🔗 Voir aussi

[issparse](../types/issparse.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.11.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
