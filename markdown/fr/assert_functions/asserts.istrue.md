# asserts.istrue

Verifie qu'une condition logique est vraie.

## 📝 Syntaxe

- asserts.istrue(condition)
- asserts.istrue(condition, message)
- [res, msg] = asserts.istrue(condition)
- [res, msg] = asserts.istrue(condition, message)

## 📥 Argument d'entrée

- condition - Scalaire ou tableau logique a tester. Chaque entree doit etre true.
- message - Message d'echec personnalise optionnel.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description

Forme methode de assert_istrue.

Sans sortie, un echec leve une erreur. Avec sorties, la fonction retourne false et le message d'echec.

## 💡 Exemples

Passing condition

```matlab
asserts.istrue(3 > 2);
```

Capture a failure

```matlab
[res, msg] = asserts.istrue(false, 'condition failed');
```

## 🔗 Voir aussi

[assert](../assert_functions/assert.md), [asserts.isfalse](../assert_functions/asserts.isfalse.md), [asserts.fail](../assert_functions/asserts.fail.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
