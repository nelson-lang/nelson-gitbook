# asserts.isfalse

Verifie qu'une condition logique est fausse.

## 📝 Syntaxe

- asserts.isfalse(condition)
- asserts.isfalse(condition, message)
- [res, msg] = asserts.isfalse(condition)
- [res, msg] = asserts.isfalse(condition, message)

## 📥 Argument d'entrée

- condition - Scalaire ou tableau logique a tester. Chaque entree doit etre false.
- message - Message d'echec personnalise optionnel.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description


Forme methode de assert\_isfalse. 

Sans sortie, un echec leve une erreur. Avec sorties, la fonction retourne false et le message d'echec.

## 💡 Exemples

Passing condition

```matlab
asserts.isfalse(3 < 2);
```
Capture a failure

```matlab
[res, msg] = asserts.isfalse(true, 'condition failed');
```


## 🔗 Voir aussi

[asserts.istrue](../assert_functions/asserts.istrue.md), [asserts.fail](../assert_functions/asserts.fail.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
