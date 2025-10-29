# mustBeLessThan

Vérifie que la valeur est inférieure à une autre valeur ou signale une erreur.

## 📝 Syntaxe

- mustBeLessThan(var, c)
- mustBeLessThan(var, c, argPosition)
- C++: void mustBeLessThan(const ArrayOfVector& args, const ArrayOf &c, int argPosition)

## 📥 Argument d'entrée

- var - une variable : tableau logique ou numérique.
- c - une variable : valeur numérique scalaire.
- argPosition - un entier positif : position de l'argument d'entrée.

## 📄 Description

<b>mustBeLessThan</b> vérifie que la valeur est inférieure à une autre valeur ou signale une erreur.

## 💡 Exemple

```matlab
mustBeLessThan(1, 0)
mustBeLessThan(1, 2)
```

## 🔗 Voir aussi

[mustBeNumeric](../validators/mustBeNumeric.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
