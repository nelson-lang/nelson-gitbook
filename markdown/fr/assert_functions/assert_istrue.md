# assert_istrue

Nom historique de asserts.istrue.

## 📝 Syntaxe

- assert_istrue(condition)
- assert_istrue(condition, message)
- [res, msg] = assert_istrue(condition)
- [res, msg] = assert_istrue(condition, message)

## 📥 Argument d'entrée

- condition - Scalaire ou tableau logique a tester. Chaque entree doit etre true.
- message - Message d'echec personnalise optionnel.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - Message d'echec de l'assertion, vide en cas de succes.

## 📄 Description

<b>assert_istrue</b> est conservee pour compatibilite.

Pour la documentation complete, utiliser [asserts.istrue](../assert_functions/asserts.istrue.md).

## 💡 Exemples

Appel historique

```matlab
assert_istrue(3 == 3);
```

Appel canonique

```matlab
asserts.istrue(true);
```

## 🔗 Voir aussi

[asserts.istrue](../assert_functions/asserts.istrue.md), [assert](../assert_functions/assert.md).

## 🕔 Historique

| Version | 📄 Description                                    |
| ------- | ------------------------------------------------- |
| 1.0.0   | version initiale                                  |
| 2.0.0   | documentee comme nom historique de asserts.istrue |

<!--
## 👤 Auteur

Allan CORNET
-->
