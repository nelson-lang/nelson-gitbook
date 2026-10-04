# asserts.isequal

Verifie que les valeurs calculee et attendue sont egales.

## 📝 Syntaxe

- asserts.isequal(computed, expected)
- asserts.isequal(computed, expected, message)
- [res, msg] = asserts.isequal(computed, expected)

## 📥 Argument d'entrée

- computed - Valeur calculee.
- expected - Valeur attendue.
- message - Message d'echec personnalise optionnel.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description

Forme methode de assert_isequal.

Les diagnostics d'echec incluent classe, dimensions et, pour les tableaux denses numeriques ou logiques de meme taille, le premier index different.

## 💡 Exemples

Equal arrays

```matlab
asserts.isequal([1 2], [1 2]);
```

Capture a diagnostic

```matlab
[res, msg] = asserts.isequal([1 2], [1 3]);
```

## 🔗 Voir aussi

[assert_isapprox](../assert_functions/assert_isapprox.md), [asserts.notEqual](../assert_functions/asserts.notEqual.md), [asserts.diff](../assert_functions/asserts.diff.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
