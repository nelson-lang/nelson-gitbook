# asserts.ndims

Verifie le nombre de dimensions.

## 📝 Syntaxe

- asserts.ndims(value, n)
- [res, msg] = asserts.ndims(value, n)

## 📥 Argument d'entrée

- value - Valeur a tester.
- n - Nombre de dimensions attendu, scalaire entier fini non negatif.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description

L'assertion reussit lorsque ndims(value) est egal a n.

Un n invalide leve immediatement une erreur d'argument.

## 💡 Exemples

Two dimensions

```matlab
asserts.ndims(ones(2, 3), 2);
```

Capture a dimension failure

```matlab
[res, msg] = asserts.ndims(ones(2, 3, 2), 2);
```

## 🔗 Voir aussi

[asserts.size](../assert_functions/asserts.size.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
