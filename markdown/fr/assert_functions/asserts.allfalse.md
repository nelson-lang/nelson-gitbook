# asserts.allfalse

Verifie que chaque entree logique vaut false.

## 📝 Syntaxe

- asserts.allfalse(value)
- [res, msg] = asserts.allfalse(value)

## 📥 Argument d'entrée

- value - Scalaire ou tableau logique.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description

L'assertion reussit lorsque chaque entree logique vaut false.

Les entrees non logiques levent immediatement une erreur d'argument.

## 💡 Exemples

All false

```matlab
asserts.allfalse([false false]);
```

Capture a true entry

```matlab
[res, msg] = asserts.allfalse([false true]);
```

## 🔗 Voir aussi

[asserts.alltrue](../assert_functions/asserts.alltrue.md), [asserts.isfalse](../assert_functions/asserts.isfalse.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
