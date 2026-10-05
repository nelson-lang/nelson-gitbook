# mustBeVectorOrEmpty

Verifie que la valeur est un vecteur ou vide, sinon renvoie une erreur.

## 📝 Syntaxe

- mustBeVectorOrEmpty(var)
- mustBeVectorOrEmpty(var, argPosition)
- C++: void mustBeVectorOrEmpty(const ArrayOfVector& args, int argPosition)

## 📥 Argument d'entrée

- var - une variable : tous les types et classes pris en charge qui implementent isvector et isempty.
- argPosition - un entier positif : position de l'argument d'entree.

## 📄 Description


<b>mustBeVectorOrEmpty</b> verifie que la valeur est un vecteur ou vide, sinon renvoie une erreur.

## 💡 Exemple



```matlab
mustBeVectorOrEmpty([1 2])
mustBeVectorOrEmpty(zeros(0, 3))
mustBeVectorOrEmpty(ones(2))
```


## 🔗 Voir aussi

[isvector](../elementary_functions/7_indexing_dimensions/isvector.md), [isempty](../types/isempty.md), [mustBeVector](../validators/mustBeVector.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.15.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
