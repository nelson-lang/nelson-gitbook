# asserts.scalar

Verifie qu'une valeur est scalaire.

## 📝 Syntaxe

- asserts.scalar(value)
- [res, msg] = asserts.scalar(value)

## 📥 Argument d'entrée

- value - Valeur a tester.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description

L'assertion reussit lorsque value est scalaire.

Les diagnostics incluent les dimensions calculees.

## 💡 Exemples

Scalar value

```matlab
asserts.scalar(1);
```

Capture a non-scalar value

```matlab
[res, msg] = asserts.scalar([1 2]);
```

## 🔗 Voir aussi

[asserts.vector](../assert_functions/asserts.vector.md), [asserts.matrix](../assert_functions/asserts.matrix.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
