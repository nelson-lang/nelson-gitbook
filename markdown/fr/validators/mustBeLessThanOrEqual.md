# mustBeLessThanOrEqual

Checks that value is less than or equal to another value or issue error.

## 📝 Syntaxe

- mustBeLessThanOrEqual(var, c)
- mustBeLessThanOrEqual(var, c, argPosition)
- C++: void mustBeLessThanOrEqual(const ArrayOfVector& args, const ArrayOf &c, int argPosition)

## 📥 Argument d'entrée

- var - une variable : tableau logique ou numérique.
- c - une variable : valeur numérique scalaire.
- argPosition - un entier positif : position de l'argument d'entrée.

## 📄 Description

<b>mustBeLessThanOrEqual</b> checks that value is less than or equal to another value or issue error.

## 💡 Exemple

```matlab
mustBeLessThanOrEqual(1, 0)
mustBeLessThanOrEqual([2 3 4],2)
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
