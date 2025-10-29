# mustBeValidVariableName

Vérifie que la valeur est un nom de variable valide sinon renvoie une erreur.

## 📝 Syntaxe

- mustBeValidVariableName(var)
- mustBeValidVariableName(var, argPosition)
- C++: void mustBeValidVariableName(const ArrayOfVector& args, int argPosition)

## 📥 Argument d'entrée

- var - une variable : une chaîne de caractères ou un tableau de caractères.
- argPosition - a positive integer value: Position of input argument.

## 📄 Description

<b>mustBeValidVariableName</b> vérifie que la valeur est un nom de variable valide sinon renvoie une erreur.

## 💡 Exemple

```matlab
mustBeValidVariableName('8t')
mustBeValidVariableName('t8')
mustBeValidVariableName("t8")
```

## 🔗 Voir aussi

[isvarname](../types/isvarname.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
