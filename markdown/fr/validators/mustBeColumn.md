# mustBeColumn

Vérifie que la valeur est un vecteur colonne ou renvoie une erreur.

## 📝 Syntaxe

- mustBeColumn(var)
- mustBeColumn(var, argPosition)
- C++: void mustBeColumn(const ArrayOfVector& args, int argPosition)

## 📥 Argument d'entrée

- var - une variable : tous les types et classes pris en charge qui implémentent la méthode iscolumn.
- argPosition - un entier positif : position de l'argument d'entrée.

## 📄 Description

<b>mustBeColumn</b> vérifie que la valeur est un vecteur colonne ou renvoie une erreur.

## 💡 Exemple

```matlab
mustBeColumn(true)
mustBeColumn([])
mustBeColumn(ones(3, 2, 4))
```

## 🔗 Voir aussi

[iscolumn](../types/iscolumn.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.10.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
