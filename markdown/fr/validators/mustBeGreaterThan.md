# mustBeGreaterThan

Vérifie que la valeur est supérieure à une autre valeur ou signale une erreur.

## 📝 Syntaxe

- mustBeGreaterThan(var, c)
- mustBeGreaterThan(var, c, argPosition)
- C++: void mustBeGreaterThan(const ArrayOfVector& args, const ArrayOf &c, int argPosition)

## 📥 Argument d'entrée

- var - une variable : tableau logique ou numérique.
- c - une variable : valeur numérique scalaire.
- argPosition - un entier positif : position de l'argument d'entrée.

## 📄 Description

<b>mustBeGreaterThan</b> vérifie que la valeur est supérieure à une autre valeur ou signale une erreur.

## 💡 Exemple

```matlab
mustBeGreaterThan(1, 0)
mustBeGreaterThan([2 3 4],2)
```

## 🔗 Voir aussi

[mustBeNumeric](../validators/mustBeNumeric.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
