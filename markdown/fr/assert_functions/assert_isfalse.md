# assert\_isfalse

Nom historique de asserts.isfalse.

## 📝 Syntaxe

- assert\_isfalse(condition)
- assert\_isfalse(condition, message)
- [res, msg] = assert\_isfalse(condition)
- [res, msg] = assert\_isfalse(condition, message)

## 📥 Argument d'entrée

- condition - Scalaire ou tableau logique a tester. Chaque entree doit etre false.
- message - Message d'echec personnalise optionnel.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - Message d'echec de l'assertion, vide en cas de succes.

## 📄 Description


<b>assert\_isfalse</b> est conservee pour compatibilite. 

Pour la documentation complete, utiliser [asserts.isfalse](../assert_functions/asserts.isfalse.md).

## 💡 Exemples

Appel historique

```matlab
assert_isfalse(3 == 4);
```
Appel canonique

```matlab
asserts.isfalse(false);
```


## 🔗 Voir aussi

[asserts.isfalse](../assert_functions/asserts.isfalse.md), [assert](../assert_functions/assert.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | documentee comme nom historique de asserts.isfalse |

<!--
## 👤 Auteur

Allan CORNET
-->
