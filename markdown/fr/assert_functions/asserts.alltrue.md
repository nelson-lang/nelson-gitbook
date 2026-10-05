# asserts.alltrue

Verifie que chaque entree logique vaut true.

## 📝 Syntaxe

- asserts.alltrue(value)
- [res, msg] = asserts.alltrue(value)

## 📥 Argument d'entrée

- value - Scalaire ou tableau logique.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - message d'echec de l'assertion, vide en cas de succes.

## 📄 Description


L'assertion reussit lorsque chaque entree logique vaut true. 

Les entrees non logiques levent immediatement une erreur d'argument.

## 💡 Exemples

All true

```matlab
asserts.alltrue([true true]);
```
Capture a false entry

```matlab
[res, msg] = asserts.alltrue([true false]);
```


## 🔗 Voir aussi

[asserts.allfalse](../assert_functions/asserts.allfalse.md), [asserts.istrue](../assert_functions/asserts.istrue.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
