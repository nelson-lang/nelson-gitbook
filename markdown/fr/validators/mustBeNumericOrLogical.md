# mustBeNumericOrLogical

Vérifie que la valeur est numérique ou logique ou renvoie une erreur.

## 📝 Syntaxe

- mustBeNumericOrLogical(var)
- mustBeNumericOrLogical(var, argPosition)
- C++: void mustBeNumericOrLogical(const ArrayOfVector& args, int argPosition)

## 📥 Argument d'entrée

- var - une variable.
- argPosition - un entier positif : position de l'argument d'entrée.

## 📄 Description

<b>mustBeNumericOrLogical</b> vérifie que la valeur est numérique ou logique ou renvoie une erreur.

## 💡 Exemple

```matlab
mustBeNumericOrLogical(1)
mustBeNumericOrLogical([])
mustBeNumericOrLogical({1})
```

## 🔗 Voir aussi

[isnumeric](../types/isnumeric.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
