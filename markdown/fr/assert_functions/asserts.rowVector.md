# asserts.rowVector

Verifie qu'une valeur est un vecteur ligne.

## 📝 Syntaxe

- asserts.rowVector(value)
- [res, msg] = asserts.rowVector(value)

## 📥 Argument d'entrée

- value - Valeur a tester.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description

L'assertion reussit lorsque value a la forme d'un vecteur ligne.

Les diagnostics indiquent la classe et les dimensions calculees.

## 💡 Exemples

Row vector

```matlab
asserts.rowVector([1 2]);
```

Capture a shape failure

```matlab
[res, msg] = asserts.rowVector([1; 2]);
```

## 🔗 Voir aussi

[asserts.columnVector](../assert_functions/asserts.columnVector.md), [asserts.vector](../assert_functions/asserts.vector.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
